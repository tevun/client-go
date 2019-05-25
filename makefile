# build the environment
build:
	docker build -t tevun/go .docker/tevun/go
	docker build -t tevun/go-cli .docker/tevun/go-cli
	docker-compose up --no-start --force-recreate

# create the container
create:
	docker-compose up --no-start --force-recreate

# destroy the container
destroy:
	docker-compose down
	docker-compose rm -f

# start the container
start:
	docker-compose start client-go

# stop the container
stop:
	docker-compose stop client-go

# run application
run:
	docker-compose start client-go
	docker-compose exec client-go sh __run.sh
	docker-compose stop client-go

# run application with debugger activated
debug:
	docker-compose start client-go
	docker-compose exec client-go sh __debug.sh
	docker-compose stop client-go

# test the app with arguments
test:
	docker-compose exec client-go sh __test.sh
