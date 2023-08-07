#!/bin/bash
set -e

# Check if a container is running
if [[ $(docker ps -q) ]]; then
  # Retrieve the container ID of the running container
  containerid=$(docker ps -q | head -n1)

  # Stop the running container
  docker stop "$containerid"
  echo "Container with ID $containerid stopped successfully."
else
  echo "No running container found. Proceeding without stopping any container."
fi

