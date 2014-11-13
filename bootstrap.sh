#!/bin/bash
# Set up packages

set -e

apt-get update -y
apt-get upgrade -y

# Install development essentials
apt-get install build-essential -y

# Install GIT
apt-get install git -y

# Install Python (needed for repo and tests)
apt-get install python -y

# Install add-apt-repository tool
apt-get install software-properties-common -y

# Use PPA packages for QBS
add-apt-repository ppa:alexey-ivanov/qbs-daily -y
apt-get update -y
apt-get install qbs -y

# Install pkg-config
apt-get install pkg-config -y

# Install OpenSSL development files
apt-get install libssl-dev -y

# Install UUID library development files
apt-get install uuid-dev -y

# Install libelf development files
apt-get install libelf-dev -y

# Install wget
apt-get install wget -y

