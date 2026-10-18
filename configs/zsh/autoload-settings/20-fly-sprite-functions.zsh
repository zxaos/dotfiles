spritemount() {
	local sprite_name="$1"
	local mount_point="/Volumes/sprite-$1"
	sshfs -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3 \
	    -o ProxyCommand="sprite proxy -s %h -W 22" "sprite@$sprite_name:" \
	    "$mount_point"
	cd "$mount_point" || return 1
}

spritemount_fskit() {
	local sprite_name="$1"
	# FSKit only supports mount points under /Volumes and creates the directory
	# itself -- /Volumes is root-owned, so don't mkdir. (A failed mount can leave
	# an empty one behind; removing it needs sudo.)
	local mount_point="/Volumes/sprite-$1"
	# FSKit can't daemonize after mounting ("forking after mount is not
	# supported"), so sshfs would hold the terminal. Run it in the foreground
	# (-f) as a disowned job instead, logging to a file, and wait for the mount.
	local log="${TMPDIR:-/tmp}/spritemount-$sprite_name.log"
	sshfs -f -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3,backend=fskit \
	    -o ProxyCommand="sprite proxy -s %h -W 22" "sprite@$sprite_name:" \
	    "$mount_point" >"$log" 2>&1 &!
	local pid=$! i
	for i in {1..60}; do
		mount | grep -qF " on $mount_point " && break
		if ! kill -0 $pid 2>/dev/null; then
			print -u2 "sshfs exited before mounting; see $log"
			return 1
		fi
		sleep 0.25
	done
	if ! mount | grep -qF " on $mount_point "; then
		print -u2 "Timed out waiting for $mount_point (sshfs pid $pid); see $log"
		return 1
	fi
	cd "$mount_point" || return 1
}

spriteunmount() {
	local sprite_name="$1"
	local mount_point="/Volumes/sprite-$1"
	# Can't unmount the directory this shell is sitting in.
	[[ "$PWD" == "$mount_point" || "$PWD" == "$mount_point"/* ]] && cd ~
	# Kext-backend mounts unmount normally. FSKit ones refuse umount (even with
	# sudo) but go away cleanly when their sshfs process exits.
	if mount | grep -qF " on $mount_point " && ! umount "$mount_point" 2>/dev/null; then
		pkill -f "sshfs .*sprite@$sprite_name: $mount_point\$"
	fi
	local i
	for i in {1..40}; do
		mount | grep -qF " on $mount_point " || return 0
		sleep 0.25
	done
	print -u2 "$mount_point is still mounted"
	return 1
}
