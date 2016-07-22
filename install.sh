#!/bin/bash

set -x

cur_dir=`dirname $0`

sudo cp ${cur_dir}/10-custom-keys.hwdb /etc/udev/hwdb.d/

sudo udevadm hwdb --update
sudo udevadm trigger

