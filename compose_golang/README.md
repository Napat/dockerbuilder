
# golang builder using docker compose
First, please `cd docker_resource` 

## For linux using makefile is prefered

### To run any command
`make runcmd_compose service='app01' line='go run main.go'`
### To clean container already exit status
`make clean_exitcontainer`

## Or you can run shell script directly(for windows with git bash)

### To run any command
`./runcmd_compose.sh app01 go 'run main.go'`
### To clean container already exit status
`./rm_container.sh 'Exit'`
