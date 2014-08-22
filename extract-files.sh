#!/bin/sh

# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

COMMONVENDOR=advan
COMMONDEVICE=mt6572-common
COMMONDEVICEBASE=../../../vendor/$COMMONVENDOR/$COMMONDEVICE

rm -rf  ../../../vendor/$COMMONVENDOR/$COMMONDEVICE
mkdir -p ../../../vendor/$COMMONVENDOR/$COMMONDEVICE

for FILE in `cat ../../advan/mt6572-common/common-proprietary-files.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`
    if [ ! -d $COMMONDEVICEBASE/$DIR ]; then
        mkdir -p $COMMONDEVICEBASE/proprietary//$DIR
    fi
    adb pull /$FILE $COMMONDEVICEBASE/proprietary//$FILE
done

../../advan/mt6572-common/setup-makefiles.sh
