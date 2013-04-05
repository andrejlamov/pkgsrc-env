PHONY: emacs git

emacs:
	cd pkgsrc/editors/emacs24-nox11 && bmake install clean
git:
	cd pkgsrc/devel/scmgit && bmake install clean
