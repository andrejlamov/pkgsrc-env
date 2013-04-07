ROOT := $(shell pwd)
TARGET_BIN := $(ROOT)/target/pkg/bin

PHONY: emacs git htop ghc

emacs:
	cd pkgsrc/editors/emacs24-nox11 && $(TARGET_BIN)/bmake install clean clean-depends
git:
	cd pkgsrc/devel/scmgit && $(TARGET_BIN)/bmake install clean clean-depends
	cp dotfiles/git/.gitconfig ~/.	
htop:
	cd pkgsrc/sysutils/htop && $(TARGET_BIN)/bmake install clean clean-depends
ghc:
	cd pkgsrc/devel/gmp && $(TARGET_BIN)/bmake install clean clean-depends
	cd target/pkg/lib   && ln -fs libgmp.so libgmp.so.3
	cd haskell          && sh build.sh
