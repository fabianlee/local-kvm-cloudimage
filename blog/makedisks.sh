#!/bin/bash

qemu-img create -b ~/Downloads/bionic-server-cloudimg-amd64.img -f qcow2 snapshot-bionic-server-cloudimg.qcow2 10G

cloud-localds -v --network-config=network_config_static.cfg test1-seed.qcow2 cloud_init.cfg
