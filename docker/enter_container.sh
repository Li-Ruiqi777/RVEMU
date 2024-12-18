docker start RVEMU

echo "Enter container: RVEMU"
docker exec \
    -u root \
    -it RVEMU \
    /bin/bash
