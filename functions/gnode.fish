function gnode --description 'Global brew installed node'
	set -lx PATH /usr/local/bin $PATH
	node $argv
end
