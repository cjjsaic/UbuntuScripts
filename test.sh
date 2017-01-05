#!/bin/bash
echo -e "\033[42;30;5m  This a colorful shell test "

cd ~/Downloads
sed '/CUDA/s\CUDNN' test.config
sed '/OPENCV/s\OPENCV3' test.config
