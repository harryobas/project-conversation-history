# Variables
COMPOSE=docker-compose

# Default task: Build the Docker image
build:
	$(COMPOSE) build

# Start the containers
up:
	$(COMPOSE) up

# Stop the containers
down:
	$(COMPOSE) down

# Run the Rails server (same as up but without rebuilding)
start:
	$(COMPOSE) up -d

# Create and migrate the database
setup-db:
	$(COMPOSE) run web rake db:create db:migrate

# Run the Rails console
console:
	$(COMPOSE) run web rails console

# Clean up volumes and reset the database
clean:
	$(COMPOSE) down --volumes

# Run tests
test:
	$(COMPOSE) run web rails test

# Build the image and start the container (shortcut for build + up)
run: build start