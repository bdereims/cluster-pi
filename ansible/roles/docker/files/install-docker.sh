#!/bin/bash
curl -fsSL get.docker.com | sh
systemctl enable docker
touch /etc/docker-installed
