#!/usr/bin/env bash

boot2docker stop > /dev/null 2>&1
VBoxManage controlvm boot2docker-vm poweroff > /dev/null 2>&1
