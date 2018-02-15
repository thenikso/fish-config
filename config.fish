set -x EDITOR "code"
set -x BROWSER open

# Go
set -x GOPATH ~/.go
set -x PATH ~/.go/bin $PATH

# N version manager https://github.com/tj/n
set -x N_PREFIX ~/.n
set -x PATH ~/.n/bin $PATH

# Local bins (haskell)
set -x PATH ~/.local/bin $PATH

# Load custom settings for current user
set USER_SPECIFIC_FILE ~/.config/fish/(whoami).fish
if test -f $USER_SPECIFIC_FILE
   . $USER_SPECIFIC_FILE
else
   echo Creating user specific file: $USER_SPECIFIC_FILE
   touch $USER_SPECIFIC_FILE
end

# Load secrets
set SECRETS_FILE ~/.config/fish/secrets.fish
if test -f $SECRETS_FILE
   . $SECRETS_FILE
end
