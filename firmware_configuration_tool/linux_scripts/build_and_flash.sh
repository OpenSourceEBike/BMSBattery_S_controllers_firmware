#!/bin/bash
make -C '../' -f Makefile_linux clean
make -C '../' -f Makefile_linux
gksu 'stm8flash -c stlinkv2 -p stm8s105?6 -w ../main.bin'
 
