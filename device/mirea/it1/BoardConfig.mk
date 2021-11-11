TARGET_BOARD_PLATFORM := sdm845 # определяет платформу, на которой построено устройство (зависит от используемого процессора)

# Architecture
TARGET_ARCH := arm64 # основная архитектура процессора
TARGET_ARCH_VARIANT := armv8-a # указывает на вариант архитектуры armv8-a
TARGET_CPU_ABI := arm64-v8a # Application Binary Interface
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT :=  Kryo 385 Silver # cortex-a73 указывает на тип ядра процессора
TARGET_2ND_ARCH := arm

# Kernel
TARGET_KERNEL_SOURCE := kernel/htc/msm8998
TARGET_KERNEL_CONFIG := lineage_ocn_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296 # размер образа ядра в байтах
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880 # размер образа рекавери в байтах
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296 # размер образа системы в байтах
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1610612736 # размер образа для хранения данных пользователя в байтах
BOARD_HAS_NO_CACHE_PARTITION := true

# A/B Updates
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
	boot \
	system \
	vendor
PRODUCT_PACKAGES += \
	update_engine \
	update_verifier
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true