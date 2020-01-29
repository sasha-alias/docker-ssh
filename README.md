
Example of docker container accessible via ssh

Usage:

        # generate ssh key
        mkdir ssh
        ssh-keygen -f ssh/id_rsa -N ''
        cp ssh/id_rsa.pub ssh/authorized_keys

        # build image and start container
        docker build -t docker-ssh -f ./Dockerfile
        docker run --rm --name docker-ssh -v $(pwd)/ssh:/root/.ssh -d -p 2222:22 docker-ssh

        # connect  to container
        ssh root@127.0.0.1 -p 2222 -i ssh/id_rsa


