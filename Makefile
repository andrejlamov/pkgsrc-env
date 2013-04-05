TARGET_BIN := target/pkg/bin

PHONY: emacs git

emacs:
	cd pkgsrc/editors/emacs24-nox11 && $(TARGET_BIN)/bmake install clean
git:
	cd pkgsrc/devel/scmgit && $(TARGET_BIN)/bmake install clean
