rif=$(route get 1.1.1.1 | grep interface | cut -d ' ' -f4)
# echo $rif
if [ "$rif" = "en0" ]; then
  echo 1
else
  echo 0
fi
