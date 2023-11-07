# Container image that runs this code
from alpine:3.10

# Copies your code file from your action repository to the filesystem path '/' of the container
Copy entrypoint.sh /entrypoint.sh 

# changing the file permission to execute it
run chmod +x entrypoint.sh

# Code file to execute when the docker container starts up ('entrypoint.sh')
entrypoint ['/entrypoint.sh']