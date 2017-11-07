#!/bin/bash
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
apt-get update
apt-get install -y kubelet kubeadm kubectl kubernetes-cni
systemctl disable dphys-swapfile
swapoff -a
systemctl daemon-reload
touch /etc/kubernetes-installed 