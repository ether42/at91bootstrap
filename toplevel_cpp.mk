CPPFLAGS += \
	-DIMG_ADDRESS=$(IMG_ADDRESS)	\
	-DIMG_SIZE=$(IMG_SIZE)		\
	-DJUMP_ADDR=$(JUMP_ADDR)	\
	-DOF_OFFSET=$(OF_OFFSET)	\
	-DOF_ADDRESS=$(OF_ADDRESS)	\
	-DOS_MEM_BANK=$(OS_MEM_BANK)	\
	-DOS_MEM_SIZE=$(OS_MEM_SIZE)	\
	-DIMAGE_NAME="\"$(IMAGE_NAME)\""	\
	-DLINUX_KERNEL_ARG_STRING="\"$(LINUX_KERNEL_ARG_STRING)\"" \
	-DTOP_OF_MEMORY=$(TOP_OF_MEMORY)	\
	-DMACH_TYPE=$(MACH_TYPE)		\

ASFLAGS += -DJUMP_ADDR=$(JUMP_ADDR)		\
	-DTOP_OF_MEMORY=$(TOP_OF_MEMORY)	\
	-DMACH_TYPE=$(MACH_TYPE)		\

ifeq ($(CONFIG_LONG_TEST),y)
CPPFLAGS += -DCONFIG_LONG_TEST
endif

ifeq ($(CONFIG_DEBUG),y)
CPPFLAGS += -DCONFIG_DEBUG
endif

ifeq ($(CONFIG_HW_INIT),y)
CPPFLAGS += -DCONFIG_HW_INIT
endif

ifeq ($(CONFIG_USER_HW_INIT),y)
CPPFLAGS += -DCONFIG_USER_HW_INIT
endif

