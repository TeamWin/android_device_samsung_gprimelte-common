#!/sbin/sh
#
# Copyright (C) 2017 The LineageOS Project
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
#

# Detect variant and copy its specific-blobs
BOOTLOADER=`getprop ro.bootloader`

case $BOOTLOADER in
  G530HXX*)   VARIANT="3g" ;;
  G530HXC*)   VARIANT="ve3g" ;;
  G530FZ*)     VARIANT="xx" ;;
  G530MUU*)    VARIANT="zt" ;;
  G530P*)      VARIANT="spr" ;;
  G530T1*)     VARIANT="mtr" ;;
  G530T*)      VARIANT="tmo" ;;
  G530W*)      VARIANT="can" ;;
  S920L*)      VARIANT="tfnvzw" ;;
  *)           VARIANT="unknown" ;;
esac

# exit if the device is unknown
if [ $VARIANT == "unknown" ]; then
	ui_print "Unknown device variant detected. Aborting..."
	exit 1
fi
