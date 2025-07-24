#!/bin/bash
# Replace <join-command> with the actual command from master output

apt-get update && apt-get install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

apt-get update
apt-get install -y kubelet kubeadm kubectl docker.io
systemctl enable docker && systemctl start docker

# Replace with actual kubeadm join command from master output
<join-command>