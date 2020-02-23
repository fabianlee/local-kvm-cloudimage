#!/bin/bash

virt-install --name test1 --virt-type kvm --memory 2048 --vcpus 2 --boot hd,menu=on --disk path=test1-seed.qcow2,device=cdrom --disk path=snapshot-bionic-server-cloudimg.qcow2,device=disk --graphics vnc --os-type Linux --os-variant ubuntu18.04 --network network:default --console pty,target_type=serial
