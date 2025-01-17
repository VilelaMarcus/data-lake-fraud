# The image name for the Docker container
IMAGE_NAME = mage_demo

# The name of the Docker Compose file
COMPOSE_FILE = docker-compose.yaml

# Build the Docker image
build:
 docker build -t $(IMAGE_NAME) .

# Run the containers in the background
up:
 docker-compose -f $(COMPOSE_FILE) up -d

# Stop the containers
down:
 docker-compose -f $(COMPOSE_FILE) down

# Open the browser
browse:
 open http://localhost:6789

#create new project
create:
 docker run -it -p 6789:6789 -v path/to/your/project:/home/src mageai/mageai \
  /app/run_app.sh mage start $(IMAGE_NAME)