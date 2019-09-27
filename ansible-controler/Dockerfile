FROM centos

# ssh server
# Don't forget to run '/usr/sbin/sshd -D' if you actually want to ssh into this container
RUN yum install -y openssh-server
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y python36u python36u-libs python36u-devel python36u-pip ansible
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
#ADD ~/.ssh/id_rsa.pub  /root/.ssh/authorized_keys
#ADD src/sshd/sshd_config /etc/ssh/sshd_config
RUN mkdir -p /home/ansible 
RUN echo root:welcome1 | chpasswd
CMD ["/usr/sbin/sshd", "-D"]
