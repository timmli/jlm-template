SHELL := /bin/bash

JLM_FILES =  myMacros.tex \
	references.bib \
	jlm-article-template.org \
	latexmkrc \
	jlm.bst jlm.cls \
	cc-by.pdf \
	$(wildcard packages/*.sty) \
	fonts/* \
	doc/*

release_jlm:
	rm -fr temp
	mkdir temp
	cp -r --parents $(JLM_FILES) temp
	cd temp; zip -r jlm-template.zip *; mv jlm-template.zip ..
	rm -fr temp
