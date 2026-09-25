#!/bin/bash
# Script to apply recovery and vold patches for tissot

PATCHES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOP="$(cd "${PATCHES_DIR}/../../../.." && pwd)"

echo "=== Applying patches for tissot ==="

# bootable/recovery
if [ -d "${TOP}/bootable/recovery" ]; then
    echo "-> Checking bootable/recovery patch..."
    if git -C "${TOP}/bootable/recovery" apply --check "${PATCHES_DIR}/bootable_recovery.patch" 2>/dev/null; then
        git -C "${TOP}/bootable/recovery" am "${PATCHES_DIR}/bootable_recovery.patch" || \
        git -C "${TOP}/bootable/recovery" apply "${PATCHES_DIR}/bootable_recovery.patch"
        echo "   [OK] Applied bootable_recovery.patch"
    else
        echo "   [INFO] bootable_recovery.patch already applied or clean"
    fi
fi

# system/vold
if [ -d "${TOP}/system/vold" ]; then
    echo "-> Checking system/vold patch..."
    if git -C "${TOP}/system/vold" apply --check "${PATCHES_DIR}/system_vold.patch" 2>/dev/null; then
        git -C "${TOP}/system/vold" am "${PATCHES_DIR}/system_vold.patch" || \
        git -C "${TOP}/system/vold" apply "${PATCHES_DIR}/system_vold.patch"
        echo "   [OK] Applied system_vold.patch"
    else
        echo "   [INFO] system_vold.patch already applied or clean"
    fi
fi

echo "=== Done ==="
