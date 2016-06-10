#!/bin/bash

sudo sh -c zpool import -d /dev/disk/by-id/ -f tank
zpool status
