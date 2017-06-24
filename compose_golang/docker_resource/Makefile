
COMPOSE_DIR=$(shell pwd)

# make runcmd_compose service='app01' line='go run main.go'
runcmd_compose:	.FORCE
	./runcmd_compose.sh ${COMPOSE_DIR} '$(service)' '$(line)'

clean_exitcontainer: .FORCE
	#docker ps -a | grep Exit | cut -d ' ' -f 1 | xargs --no-run-if-empty docker rm -f
	./rm_container.sh 'Exit'

.FORCE:
