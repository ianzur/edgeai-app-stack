#!/bin/bash

sudo apt update
sudo apt install cmake ninja-build meson libglib2.0-dev

if [ ! -d arm-gnu-toolchain-13.2.Rel1-x86_64-aarch64-none-linux-gnu ]; then
    wget https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-aarch64-none-linux-gnu.tar.xz --no-check-certificate
    tar xf arm-gnu-toolchain-13.2.rel1-x86_64-aarch64-none-linux-gnu.tar.xz > /dev/null
    rm arm-gnu-toolchain-13.2.rel1-x86_64-aarch64-none-linux-gnu.tar.xz
fi

if [ ! -d targetfs ]; then
<<<<<<< HEAD
    if [ "$SOC" == "j721e" ]; then
        wget https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-U6uMjOroyO/09.02.00.05/tisdk-adas-image-j721e-evm.tar.xz
        mv tisdk-adas-image-j721e-evm.tar.xz targetfs.tar.xz
    elif [ "$SOC" == "j721s2" ]; then
        wget https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-Snl3iJzGTW/09.02.00.05/tisdk-adas-image-j721s2-evm.tar.xz
        mv tisdk-adas-image-j721s2-evm.tar.xz targetfs.tar.xz
    elif [ "$SOC" == "j784s4" ]; then
        wget https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-lOshtRwR8P/09.02.00.05/tisdk-adas-image-j784s4-evm.tar.xz
        mv tisdk-adas-image-j784s4-evm.tar.xz targetfs.tar.xz
    elif [ "$SOC" == "j722s" ]; then
        wget https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-R9W8pVWsOt/09.02.00.05/tisdk-adas-image-j722s-evm.tar.xz
        mv tisdk-adas-image-j722s-evm.tar.xz targetfs.tar.xz
    elif [ "$SOC" == "am62a" ]; then
        wget https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-D37Ls3JjkT/09.02.00.05/tisdk-edgeai-image-am62axx-evm.wic.xz
       mv tisdk-edgeai-image-am62axx-evm.tar.xz targetfs.tar.xz
    else
        wget https://dr-download.ti.com/software-development/software-development-kit-sdk/MD-Snl3iJzGTW/10.00.00.08/tisdk-adas-image-j721s2-evm.tar.xz
        mv tisdk-adas-image-j721s2-evm.tar.xz targetfs.tar.xz
    fi
    mkdir targetfs
    cd targetfs
    tar xf ../targetfs.tar.xz > /dev/null
    cd -
    rm targetfs.tar.xz
fi
