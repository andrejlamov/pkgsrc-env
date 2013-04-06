ROOT := $(shell pwd)
TARGET_BIN := $(ROOT)/target/pkg/bin

PHONY: emacs git htop jdk

emacs:
	cd pkgsrc/editors/emacs24-nox11 && $(TARGET_BIN)/bmake install clean clean-depends
git:
	cd pkgsrc/devel/scmgit && $(TARGET_BIN)/bmake install clean clean-depends
	cp dotfiles/git/.gitconfig ~/.	
htop:
	cd pkgsrc/sysutils/htop && $(TARGET_BIN)/bmake install clean clean-depends
jdk:
	cd java && sh build.sh
