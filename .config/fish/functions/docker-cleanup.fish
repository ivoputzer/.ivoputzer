function docker-cleanup --description "Drops unused and temporary images"
  docker ps -aqf status=exited|xargs docker rm
  docker images -qf dangling=true|xargs docker rmi
end
