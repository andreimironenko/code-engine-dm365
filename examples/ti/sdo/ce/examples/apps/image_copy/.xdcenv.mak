#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = /home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/codec-engine_2_26_02_11/examples/ti/sdo/ce/examples/apps/image_copy/../../../../../..;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/codec-engine_2_26_02_11/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/xdais_6_26_01_03/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/linuxutils_2_26_01_02/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/framework-components_2_26_00_01/packages
override XDCROOT = /home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/xdctools_3_16_03_36
override XDCBUILDCFG = /home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/codec-engine_2_26_02_11/examples/ti/sdo/ce/examples/apps/image_copy/../../../../../../config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = DEVICES="DM365" PROGRAMS="APP_LOCAL" GPPOS="LINUX_GCC" CGTOOLS_V5T=/home/amironenko/apps/codesourcery/arm-2009q1/ CC_V5T=bin/arm-none-linux-gnueabi-gcc CGTOOLS_C64P=/db/toolsrc/library/tools/vendors/ti/c6x/6.0.16/Linux CGTOOLS_C674=/db/toolsrc/library/tools/vendors/ti/c6x/6.1.5/Linux CGTOOLS_UCARM9=/db/toolsrc/library/tools/vendors/opensource/buildroot/10122007/build_arm/staging_dir/usr WINCE_ROOTDIR=C:/WINCE600 WINCE_PROJECTROOT=C:/WINCE600/_your_ProjectRoot_/Wince600/TI_EVM_3530_ARMV4I CGTOOLS_LINUX86=_your_Linux86_installation_directory
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = /home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/codec-engine_2_26_02_11/examples/ti/sdo/ce/examples/apps/image_copy/../../../../../..;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/codec-engine_2_26_02_11/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/xdais_6_26_01_03/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/linuxutils_2_26_01_02/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/framework-components_2_26_00_01/packages;/home/amironenko/ti-dvsdk_dm365-evm_4_02_00_06/xdctools_3_16_03_36/packages;../../../../../..
HOSTOS = Linux
endif
