#!/bin/bash
cd ~
git clone htts://github.com/BVLC/caffe.git
sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev libgflags-dev libgoogle-glog-dev liblmdb-dev protobuf-compiler libopenblas-dev
cd caffe
cp Makefile.config.example Makefile.config
sudo cat USE_CUDNN := 1 > Makefile.config
sudo cat USE_OPENCV := 1 > Makefile.config
sudo cat OPENCV_VERSION := 3 > Makefile.config
sudo cat CUDA_DIR := /usr/local/cuda > Makefile.config
sudo cat BLAS := atlas > Makefile.config
sudo cat PYTHON_LIBRARIES := boost_python3 python3.5m
PYTHON_INCLUDE := /usr/include/python3.5m \
                 /usr/lib/python3.5/dist-packages/numpy/core/include > Makefile.config
sudo cat PYTHON_LIB := /usr/lib > Makefile.config
sudo cat INCLUDE_DIRS += $(BUILD_INCLUDE_DIR) ./src ./include /usr/include/hdf5/serial >> Makeconfig
sudo cat LIBRARIES += glog gflags protobuf boost_system boost_filesystem m hdf5_serial_hl hdf5_serial >> Makeconfig
make all
make py
./data/mnist/get_mnist.sh
./example/mnist/create_mnist.sh
./example/mnist/train_lenet.sh
echo "Congratulations! Enjoy caffe!"
