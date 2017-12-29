#!/bin/bash
gksu 'stm8flash -c stlinkv2 -p stm8s105?6 -s opt -w linux_scripts/option_bytes_pwm_n_channels_enabled.bin'
