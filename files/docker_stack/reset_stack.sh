#!/bin/bash

find stack_data -depth ! \( -name 'stack_data' -o -name 'zookeeper1' -o -name 'zookeeper2' -o -name 'zookeeper3' -o -name 'z_data' -o -name 'z_log' -o -name 'kafka1' -o -name 'kafka2' -o -name 'kafka3' -o -name '.gitkeep' \) \
 -type d,f -exec rm -rvf {} +
