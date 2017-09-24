for p in /usr/bin /usr/local/bin /usr/local/sbin ~/.config/fish/bin ./virtual/bin ~/.n/bin
	if test -d $p
		set -x PATH $p $PATH
	end
end

set -xg GOPATH ~/.go
set -xg N_PREFIX ~/.n

set -x EDITOR "code"

set fish_greeting ""
set -x CLICOLOR 1

set -x BROWSER open

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
