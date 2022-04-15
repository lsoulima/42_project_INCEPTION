    sudo echo "nameserver 8.8.8.8" > /etc/resolv.conf
    sudo apt -y update
    sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
    sudo apt remove docker docker-engine docker.io containerd runc                    
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -       
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    sudo apt update
    sudo apt -y install docker-ce docker-ce-cli containerd.io
    sudo usermod -aG docker $USER 
    newgrp docker
    docker version
    After installing Docker and IOU, add your user to the following groups:
        for i in ubridge libvirt kvm wireshark docker; do
        sudo usermod -aG $i $USER
        done