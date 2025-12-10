# kubectx style aws-profile switcher
if (( $+commands[fzf] && $+commands[aws] )) && [[ -f ~/.aws/config ]]; then
    awsctx() {
        local target_profile=$(awk '/^\[profile / {print $2}' ~/.aws/config | tr -d ']' | fzf)
        [[ -n $target_profile ]] && export AWS_PROFILE=$target_profile
    }
fi
