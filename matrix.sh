#!/bin/bash

rm -rf .repo/local_manifests/

# Rom source repo


# Clone local_manifests repository
git clone -b matrix https://github.com/Khnome/local_manifests.git .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Sync the repositories
/opt/crave/resync.sh
echo "============================"

# Export
export BUILD_USERNAME=Khnome
export BUILD_HOSTNAME=crave
export TZ="Europe/Vilnius"
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh
echo "====== Envsetup Done ======="

# Brunch
brunch stone userdebug
echo "============="

