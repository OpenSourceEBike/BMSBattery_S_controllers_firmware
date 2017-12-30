#!/bin/bash
make -C './firmware' -f Makefile_linux clean
make -C './firmware' -f Makefile_linux
gksu 'stm8flash -c stlinkv2 -p stm8s105?6 -w ./firmware/main.bin'
 
