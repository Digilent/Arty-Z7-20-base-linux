GENCCODE_ASSEMBLY_TYPE=-a gcc
SO=so
SOBJ=so
A=a
LIBPREFIX=lib
LIB_EXT_ORDER=.57.1
COMPILE=arm-xilinx-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=neon  -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/sysroots/zynq-generic -D_REENTRANT  -DU_HAVE_ELF_H=1 -DU_HAVE_ATOMIC=1  -DU_ATTRIBUTE_DEPRECATED= -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/icu/57.1-r0=/usr/src/debug/icu/57.1-r0 -fdebug-prefix-map=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/sysroots/x86_64-linux= -fdebug-prefix-map=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/sysroots/zynq-generic= -std=c99 -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings   -c
LIBFLAGS=-I/usr/include -DPIC -fPIC
GENLIB=arm-xilinx-linux-gnueabi-gcc  -march=armv7-a -marm -mfpu=neon  -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/sysroots/zynq-generic -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/icu/57.1-r0=/usr/src/debug/icu/57.1-r0 -fdebug-prefix-map=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/sysroots/x86_64-linux= -fdebug-prefix-map=/tmp/petalinux-yocto/yocto_sdk_full_2017.1/build/tmp/sysroots/zynq-generic= -std=c99 -Wall -pedantic -Wshadow -Wpointer-arith -Wmissing-prototypes -Wwrite-strings   -Wl,-O1 -Wl,--hash-style=gnu   -shared -Wl,-Bsymbolic
LDICUDTFLAGS=
LD_SONAME=-Wl,-soname -Wl,
RPATH_FLAGS=
BIR_LDFLAGS=-Wl,-Bsymbolic
AR=arm-xilinx-linux-gnueabi-ar
ARFLAGS=r
RANLIB=arm-xilinx-linux-gnueabi-ranlib
INSTALL_CMD=/usr/bin/install -c
