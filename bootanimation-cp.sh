#!/bin/bash

BOOT_ANIMATION="https://cdn-114.anonfiles.com/RcH5jcz2p1/3191c8ce-1608021215/bootanimation.zip"
mkdir -p $BUILD_DIR/branding
echo "Downloading boot animation $BOOT_ANIMATION"
wget -O $BUILD_DIR/branding/bootanimation.zip $BOOT_ANIMATION
sed -i "\$aPRODUCT_COPY_FILES += branding/bootanimation.zip:system/media/bootanimation.zip" ${BUILD_DIR}/build/make/target/product/handheld_system.mk
