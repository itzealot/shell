#!/bin/bash

# `dirname $0` 进入到当前目录
cd `dirname $0`

# `pwd` 获取当前目录的路径
BIN_DIR=`pwd`

echo $BIN_DIR

# 返回上一级目录
cd ..

# 获取当前目录的路径
DEPLOY_DIR=`pwd`

echo $DEPLOY_DIR

# 拼接路径
CONF_DIR=$DEPLOY_DIR/conf

echo $CONF_DIR
