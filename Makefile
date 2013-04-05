ROOT := $(shell pwd)
TARGET_BIN := $(ROOT)/target/pkg/bin

PHONY: emacs git htop

emacs:
	cd pkgsrc/editors/emacs24-nox11 && $(TARGET_BIN)/bmake install clean
git:
	cd pkgsrc/devel/scmgit && $(TARGET_BIN)/bmake install clean
htop:
	cd pkgsrc/sysutils/htop && $(TARGET_BIN)/bmake install clean
