set -e

# Stop the running container (if any)
containerid = `docker ps | awk -F " " '{print $1}'`
sudo docker rm -f $containerid
