function gnpm --description 'Global brew installed NPM'
	set -lx PATH /usr/local/bin $PATH
	npm -g $argv
end
