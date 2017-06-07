#!/usr/bin/env bash

GU_NAME=$USER_NAME
getent group $GU_NAME > /dev/null || groupadd $GU_NAME
groupmod -g $GROUP_ID $GU_NAME
getent passwd $GU_NAME > /dev/null || useradd -g $GROUP_ID -u $USER_ID --home-dir /home/ddk $GU_NAME && chown $USER_ID:$GROUP_ID /home/ddk
php-fpm