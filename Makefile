# Makefile for publish the blog

.PHONY: all publish publish_no_init

all: publish

publish: publish.el
	@echo "Publishing... with current Emacs configurations."
	emacs --batch --load publish.el --funcall org-publish-all

publish_no_init: publish.el
	@echo "Publishing... with --no-init."
	emacs --batch --no-init --load publish.el --funcall org-publish-all


upload:
	git subtree push --prefix public origin gh-pages

clean:
	@echo "Cleaning up.."
	@rm -rvf *.elc
	@rm -rvf public
	@rm -rvf ~/.org-timestamps/*
