# Everything cribbed from https://github.com/cask/cask/tree/751435bd56c7123d8244d9d156309e21e63cd5c0.

export EMACS ?= $(shell which emacs)
CASK_DIR := $(shell cask package-directory)

$(CASK_DIR): Cask
	cask install
	@touch $(CASK_DIR)

.PHONY: cask
cask: $(CASK_DIR)

.PHONY: compile
compile: cask
	! (cask eval "(let ((byte-compile-error-on-warn t)) \
	                 (cask-cli/build))" 2>&1 \
	   | egrep -a "(Warning|Error):") ; \
	  (ret=$$? ; cask clean-elc && exit $$ret)

.PHONY: test
test: compile
	cask exec ert-runner