docker run -d --name ansible-controller \
     -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys \
     -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
     -p 2222:22 \
     -e SSH_ENABLE_ROOT=true \
     -e ANSIBLE_CONFIG=/home/ansible \
     jc/centos-ansible-controller