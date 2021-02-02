#!/bin/bash

BOOT_ANIMATION="https://drive.google.com/uc?export=download&id=1ZfgYax7F08yEB44N6J0Qwt4XkeeYr0jt"
mkdir -p $BUILD_DIR/branding
echo "Downloading boot animation $BOOT_ANIMATION"
wget -O $BUILD_DIR/branding/bootanimation.zip $BOOT_ANIMATION
sed -i "\$aPRODUCT_COPY_FILES += branding/bootanimation.zip:system/media/bootanimation.zip" ${BUILD_DIR}/build/make/target/product/handheld_system.mk
