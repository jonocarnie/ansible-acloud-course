docker run -d -p $1:22 -p $2:80 --name $3 \
    -v ~/.ssh/id_rsa.pub:/root/.ssh/authorized_keys \
    -e SSH_ENABLE_ROOT=true \
    jc/centos-sshd