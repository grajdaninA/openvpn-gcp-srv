#!/bin/bash

ssh -i ${ssh_key_own} ${user}@${ip} "sudo docker exec dockovpn ./genclient.sh"
