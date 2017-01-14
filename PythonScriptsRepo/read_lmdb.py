# -*- coding:utf-8 -*-
import sys
sys.path.insert(0, "/home/chenqi-didi/caffe/python")
import lmdb
import caffe
from caffe.proto import caffe_pb2  
import cv2  
import numpy as np  
  
lmdb_env = lmdb.open('/home/chenqi-didi/Documents/caffe_tiny5/data/caffe_train_lmdb', readonly=True) # 打开数据文件  
lmdb_txn = lmdb_env.begin() # 生成处理句柄  
lmdb_cursor = lmdb_txn.cursor()
key = lmdb_cursor.key()
value = lmdb_cursor.value()
datum = caffe_pb2.Datum() # caffe 定义的数据类型  
  
for (idx, (key, value)) in enumerate(lmdb_cursor): # 循环获取数据  
    datum.ParseFromString(value) # 从 value 中读取 datum 数据  
  
    label = datum.label
    print('label: ', str(label))
    data = caffe.io.datum_to_array(datum)  
    print(data.shape)
    print(datum.channels)
    image = data.transpose(1, 2, 0)  
    cv2.imshow('cv2.png', image)  
    cv2.waitKey(0)  
  
cv2.destroyAllWindows()  
lmdb_env.close()