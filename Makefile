# Makefile

# Define the default target to show usage information
.PHONY: default
default:
	@echo "Usage:"
	@echo "  make client         # Build and run the client"
	@echo "  make server         # Build and run the server"
	@echo "  make run-client     # Run the client container"
	@echo "  make run-server     # Run the server container"
	@echo "  make clean          # Stop and remove containers and volumes"
	@echo "  make logs-client    # View logs for the client"
	@echo "  make logs-server    # View logs for the server"

# Target to build and run the client
.PHONY: client
client:
	sudo docker-compose up --build -d client

# Target to build and run the server
.PHONY: server
server:
	sudo docker-compose up --build -d server

# Target to run the client container
.PHONY: stop-client
stop-client:
	sudo docker-compose stop client

# Target to run the server container
.PHONY: stop-server
stop-server:
	sudo docker-compose stop server

# Target to stop and remove containers and volumes
.PHONY: clean
clean:
	sudo docker-compose down -v

# Target to view logs for the client
.PHONY: logs-client
logs-client:
	sudo docker-compose logs -f client

# Target to view logs for the server
.PHONY: logs-server
logs-server:
	sudo docker-compose logs -f server
