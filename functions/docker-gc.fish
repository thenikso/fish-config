function docker-gc
	for i in (docker ps -q --filter "status=exited")
		docker rm $i
	end
	for i in (docker images -q --filter "dangling=true")
		docker rmi $i
	end
end