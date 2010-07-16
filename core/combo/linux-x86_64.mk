# Configuration for Linux on x86.
# Included by combo/select.make

# right now we get these from the environment, but we should
# pick them from the tree somewhere
$(combo_target)CC := $(CC)
$(combo_target)CXX := $(CXX)
$(combo_target)AR := $(AR)

ifeq ($(combo_target),HOST_)
# $(1): The file to check
define get-file-size
stat --format "%s" "$(1)" | tr -d '\n'
endef
endif

$(combo_target)GLOBAL_CFLAGS += -fPIC
$(combo_target)GLOBAL_CFLAGS += \
	-include $(call select-android-config-h,linux-x86_64)

$(combo_target)NO_UNDEFINED_LDFLAGS := -Wl,--no-undefined


