#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Architecture
export TARGET_ARCH="arm64"

# Maintainer details
export OF_MAINTAINER="Raya Mahardika"
export FOX_BUILD_TYPE="Unofficial"

# Device identification
export FOX_AB_DEVICE=1
export TARGET_DEVICE_ALT="tissot_sprout"
export FOX_TARGET_DEVICES="tissot_sprout,tissot"

# Screen and UI configuration
export OF_SCREEN_H=1920
export OF_STATUS_H=72
export OF_STATUS_INDENT_LEFT=0
export OF_STATUS_INDENT_RIGHT=0
export OF_ALLOW_DISABLE_NAVBAR=1
export OF_CLOCK_POS=0

# Hardware features (LED, Flashlight)
export OF_USE_GREEN_LED=0
export OF_FLASHLIGHT_ENABLE=1
export OF_FL_PATH1="/sys/class/leds/led:torch_0"
export OF_FL_PATH2="/sys/class/leds/led:torch_1"

# Vanilla / AOSP Build (Disable MIUI-specific patches & OTA for Android One device)
export FOX_VANILLA_BUILD=1
export OF_NO_ADDITIONAL_MIUI_PROPS_CHECK=1

# Keymaster & Decryption
export OF_DEFAULT_KEYMASTER_VERSION="3.0"

# Partitions, Storage & Formatting
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1
export OF_UNBIND_SDCARD_F2FS=1
export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"

# Binaries and tools
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_BASH_TO_SYSTEM_BIN=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_GREP_BINARY=1
export FOX_USE_DATE_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_ENABLE_APP_MANAGER=1
export FOX_DELETE_AROMAFM=1

# Misc
export OF_NO_SPLASH_CHANGE=1
