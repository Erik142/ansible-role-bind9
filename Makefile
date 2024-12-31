VERBOSE ?= no
Q ?= @

ifneq ($(VERBOSE),no)
	Q := $(empty)
endif

.PHONY: test
test:
		$(Q)molecule test $(ARGS)

.PHONY: shell
shell:
		$(Q)molecule login --host almalinux9
