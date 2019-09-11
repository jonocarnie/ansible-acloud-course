docker run -it --name ansible-controller -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys \
     -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
     -v ./code/:/home/ansible/ \
     -e SSH_ENABLE_ROOT=true \
     -e ANSIBLE_CONFIG=/home/ansible \
     jc/ansible-host