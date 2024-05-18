ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_ARCH_MSM8998) += \
		msm8998-mtp-overlay.dtbo \
		msm8998-v2-mtp-overlay.dtbo \
		msm8998-v2.1-mtp-overlay.dtbo

msm8998-mtp-overlay.dtbo-base := msm8998.dtb
msm8998-v2-mtp-overlay.dtbo-base := msm8998-v2.dtb
msm8998-v2.1-mtp-overlay.dtbo-base := msm8998-v2.1.dtb
else
dtb-$(CONFIG_ARCH_MSM8998) += \
	msm8998-mtp.dtb \
	msm8998-v2-mtp.dtb \
	msm8998-v2.1-mtp.dtb
endif

dtb-$(CONFIG_ARCH_SDM660) += sdm660-mtp.dtb

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_ARCH_SDM670) += \
		sdm670-mtp-overlay.dtbo \
		sdm710-mtp-overlay.dtbo

sdm670-mtp-overlay.dtbo-base := sdm670.dtb
sdm710-mtp-overlay.dtbo-base := sdm710.dtb
else
dtb-$(CONFIG_ARCH_SDM670) += \
	sdm670-mtp.dtb \
	sdm710-mtp.dtb
endif

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_ARCH_SDM845) += \
		sdm845-mtp-overlay.dtbo \
		sdm845-v2-mtp-overlay.dtbo \
		sdm845-v2.1-mtp-overlay.dtbo

sdm845-mtp-overlay.dtbo-base := sdm845.dtb
sdm845-v2-mtp-overlay.dtbo-base := sdm845-v2.dtb
sdm845-v2.1-mtp-overlay.dtbo-base := sdm845-v2.1.dtb
else
dtb-$(CONFIG_ARCH_SDM845) += \
	sdm845-mtp.dtb \
	sdm845-v2-mtp.dtb \
	sdm845-v2.1-mtp.dtb
endif

ifeq ($(CONFIG_BUILD_ARM64_DT_OVERLAY),y)
	dtbo-$(CONFIG_ARCH_SM8150) += \
		sm8150-mtp-overlay.dtbo

sm8150-mtp-overlay.dtbo-base := sm8150.dtb sm8150-v2.dtb sm8150p.dtb sm8150p-v2.dtb
else
dtb-$(CONFIG_ARCH_SM8150)	+= \
	sm8150-mtp.dtb \
	sm8150-v2-mtp.dtb \
	sm8150p-mtp.dtb \
	sm8150p-v2-mtp.dtb
endif

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb *.dtbo
