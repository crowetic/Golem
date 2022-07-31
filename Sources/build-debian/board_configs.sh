#!/bin/bash -e

export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

BOARD=$1
DEFCONFIG=""
DTB=""
KERNELIMAGE=""
CHIP=""
UBOOT_DEFCONFIG=""

case ${BOARD} in
	"tb-rk3399prod")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rk3399pro_defconfig
		DTB=rk3399pro-toybrick-prod-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399pro"
		;;
	"ficus2-rk3399pro")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rk3399pro-ficus2_defconfig
		DTB=rk3399pro-ficus2-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399pro"
		;;
	"rockpin10")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rk3399pro-rockpi-n10-linux_defconfig
		DTB=rk3399pro-rockpi-n10-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399pro"
		;;
	"rk3399-excavator")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3399_defconfig
		DTB_MAINLINE=rk3399-sapphire-excavator.dtb
		DTB=rk3399-sapphire-excavator-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rock960ab")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock960-ab-rk3399_defconfig
		DTB=rock960-model-ab-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rock960c")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock960-c-rk3399_defconfig
		DTB=rock960-model-c-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rockpi4a")
		DEFCONFIG=rockchip_linux_defconfig
		DEFCONFIG_MAINLINE=defconfig
		UBOOT_DEFCONFIG=rock-pi-4a-rk3399_defconfig
		DTB=rk3399-rock-pi-4a.dtb
		DTB_MAINLINE=rk3399-rock-pi-4.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rockpi4b")
		DEFCONFIG=rockchip_linux_defconfig
		DEFCONFIG_MAINLINE=defconfig
		UBOOT_DEFCONFIG=rock-pi-4b-rk3399_defconfig
		DTB=rk3399-rock-pi-4b.dtb
		DTB_MAINLINE=rk3399-rock-pi-4.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rockpi4c")
		DEFCONFIG=rockchip_linux_defconfig
		DEFCONFIG_MAINLINE=defconfig
		UBOOT_DEFCONFIG=rock-pi-4c-rk3399_defconfig
		DTB=rk3399-rock-pi-4c.dtb
		DTB_MAINLINE=rk3399-rock-pi-4.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rockpis")
		DEFCONFIG=rk3308_linux_defconfig
		UBOOT_DEFCONFIG=rock-pi-s-rk3308_defconfig
		DTB=rk3308-rock-pi-s.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3308"
		;;
	"rockpropx30")
		DEFCONFIG=px30_linux_defconfig
		UBOOT_DEFCONFIG=rockpro-px30_defconfig
		DTB=px30-rockpro.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="px30"
		;;
	"ficus")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3399_defconfig
		DTB=ficus-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rk3399-firefly")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=firefly-rk3399_defconfig
		DTB_MAINLINE=rk3399-firefly.dtb
		DTB=rk3399-firefly-linux.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rk3328-rock64")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3328_defconfig
		DTB=rk3328-rock64.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3328"
		;;
	"rk3328-evb")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3328_defconfig
		DTB=rk3328-evb.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3328"
		;;
	"rockpie")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock-pi-e-rk3328_defconfig
		DTB=rk3328-rock-pi-e.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3328"
		;;
	"rk3288-evb")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3288_defconfig
		DTB=rk3288-evb-act8846.dtb
		CHIP="rk3288"
		;;
	"rockpin8")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3288_defconfig
		DTB=rk3288-rockpi-n8-linux.dtb
		CHIP="rk3288"
		;;
	"rk3288-evb-rk808")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=fennec-rk3288_defconfig
		DTB=rk3288-evb-rk808-linux.dtb
		CHIP="rk3288"
		;;
	"rk3288-evb-rk1608")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3288-rk1608_defconfig
		DTB=rk3288-evb-rk1608.dtb
		CHIP="rk3288"
		;;
	"rk3288-firefly")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=firefly-rk3288_defconfig
		DTB=rk3288-firefly.dtb
		CHIP="rk3288"
		;;
	"rk3288-firefly-reload")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=firefly-rk3288_defconfig
		DTB=rk3288-firefly-reload-linux.dtb
		CHIP="rk3288"
		;;
	"rk3288-fennec")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=fennec-rk3288_defconfig
		DTB=rk3288-fennec.dtb
		CHIP="rk3288"
		;;
	"rk3288-miniarm")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=tinker-rk3288_defconfig
		DTB_MAINLINE=rk3288-tinker.dtb
		DTB=rk3288-miniarm.dtb
		CHIP="rk3288"
		;;
	"rk3288-phytec")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=phycore-rk3288_defconfig
		DTB=rk3288-phycore-rdk.dtb
		CHIP="rk3288"
		;;
	"rk3128-fireprime")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3128_defconfig
		DTB=rk3128-fireprime.dtb
		CHIP="rk3128"
		;;
	"rk3229-evb")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=evb-rk3229_defconfig
		DTB=rk3229-evb.dtb
		CHIP="rk322x"
		;;
	"rk3036-kylin")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=kylin-rk3036_defconfig
		DTB=rk3036-kylin.dtb
		CHIP="rk3036"
		;;
	"rk3399-fuhai")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=fuhai-rk3399_defconfig
		DTB=rk3399-fuhai.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3399"
		;;
	"rk3566-radxa-e23")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=radxa-e23-rk3566_defconfig
		DTB=rk3566-radxa-e23.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3566"
		;;
	"rk3566-radxa-cm3-raspcm4io")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=radxa-cm3-rpi-cm4-io-rk3566_defconfig
		DTB=rk3566-radxa-cm3-rpi-cm4-io.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3566"
		;;
	"rk3568-radxa-e25")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=radxa-e25-rk3568_defconfig
		DTB=rk3568-radxa-e25.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3566"
		;;
	"rk3568-rock-3a")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock-3-a-rk3568_config
		DTB=rk3568-rock-3-a.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3568"
		;;
	"rk3568-rock-3b")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock-3-b-rk3568_config
		DTB=rk3568-rock-3-b.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-linux-gnu-
		CHIP="rk3568"
		;;
	"rk3588s-radxa-nx5")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=radxa-nx5-rk3588s_defconfig
		DTB=rk3588s-radxa-nx5.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-none-linux-gnu-
		CHIP="rk3588s"
		;;
	"rk3588s-rock-5a")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock-5a-rk3588s_defconfig
		DTB=rk3588s-rock-5a.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-none-linux-gnu-
		CHIP="rk3588s"
		;;
	"rk3588-rock-5b")
		DEFCONFIG=rockchip_linux_defconfig
		UBOOT_DEFCONFIG=rock-5b-rk3588_defconfig
		DTB=rk3588-rock-5b.dtb
		export ARCH=arm64
		export CROSS_COMPILE=aarch64-none-linux-gnu-
		CHIP="rk3588"
		;;
	*)
		echo "board '${BOARD}' not supported!"
		exit -1
		;;
esac
