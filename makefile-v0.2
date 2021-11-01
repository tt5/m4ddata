# v.0.1
MAKEFLAGS += --no-builtin-rules
.SUFFIXES:            # Delete the default suffixes
.SUFFIXES: .tex .pdf .md .m4   # Define our suffix list
.PRECIOUS: %.m4 %.md

files := $(wildcard *.m4d)

files-pdf:= $(files:.m4d=.pdf)
files-md := $(files:.m4d=-md.md)
files-md-m4 := $(files:.m4d=-md.m4)

MAKEFILES = $(shell find . -maxdepth 3 -type l -name Makefile)
SUBDIRS   = $(filter-out ./,$(dir $(MAKEFILES)))

default:



rec-md:
	for dir in $(SUBDIRS); do \
        make -C $$dir md; \
    done

hugo-path := ~/data/hugo/content/

ready:
	for dir in $(SUBDIRS); do \
	  ipath=$$dir; \
	  ipath+=config.json; \
	  index=`jshon -e "index" -u -F $$ipath`; \
	  ifilename=$(hugo-path)$$index; \
	  ifilename+=_index.md; \
	  if [ `find $$ipath -newer $$ifilename` ]; then \
	    make -C $$dir deploy-md; \
        ls -l $$ifilename; \
	    touch $$ifilename; \
	  fi \
    done

rec-clean-md:
	for dir in $(SUBDIRS); do \
        make -C $$dir clean-md; \
    done

rec-md-deploy:
	for dir in $(SUBDIRS); do \
		make -C $$dir deploy-md; \
    done

all: $(files-pdf)

deploy-md: $(files-md)
	#>>>>>DEPLOY"
	index=`jshon -e "index" -u -F config.json`; \
	ifilename=$(hugo-path)$$index; \
	for file in $(files-md); do \
	  #echo $$file $$ifilename/$$file; \
	  cp $$file $$ifilename/$$file; \
	done

deploy-init:
	index=`jshon -e "index" -u -F config.json`; \
	ifilename=$(hugo-path)$$index; \
	ifilename+=/_index.md; \
	echo $$ifilename; \
	touch $$ifilename; \
	printf -- "---\n" > $$ifilename; \
	title=`jshon -e "title" -u -F config.json`; printf -- "title: $$title\n" >> $$ifilename; \
	index=`jshon -e "index" -u -F config.json`; printf -- "index: $$index\n" >> $$ifilename; \
	path=`jshon -e "path" -u -F config.json`; printf -- "path: $$path\n" >> $$ifilename; \
	type=`jshon -e "type" -u -F config.json`; printf -- "type: $$type\n" >> $$ifilename; \
	lang=`jshon -e "lang" -u -F config.json`; printf -- "lang: $$lang\n" >> $$ifilename; \
	printf -- "---\n" >> $$ifilename;
	#printf -- "---\n" > $(hugo-path)`cat index`_index.md
	#title=`jshon -e "title" -u -F config.json`; printf -- "title: $$title\n" >> $(hugo-path)`cat index`_index.md
	#index=`jshon -e "index" -u -F config.json`; printf -- "index: $$index\n" >> $(hugo-path)`cat index`_index.md
	#printf -- "---\n" > $(hugo-path)`cat index`_index.md

md: $(files-md)

some := $(files:.m4d=)

$(files-md): $(files)
	val="$*"; rm $${val/%-md}.m4d
	val="$*"; cat ./m4ddata/line.snip ./config.json ./m4ddata/head.snip $${val/%-md}.m4do > $${val/%-md}.m4d 
	val="$*"; ./prepm4.sh $${val/%-md}
	m4 $*.m4 > F2-md.md
	sed -i '1,/[^[:space:]]/ d' F2-md.md
	printf -- "---\n" > frontmatter
	val="$*"; title=`jshon -e "title" -u -F $${val/%-md}-F1.some`; printf -- "title: $$title\n" >> frontmatter
	val="$*"; latex=`jshon -e "latex" -u -F $${val/%-md}-F1.some`; printf -- "latex: $$latex\n" >> frontmatter
	#printf -- "title: notes\n" >> frontmatter
	date=`date --rfc-3339="date"`; printf -- "date: $$date\n" >> frontmatter
	printf -- "---\n" >> frontmatter
	cat frontmatter F2-md.md > $*.md
	touch config.json

%.m4: %.m4d
	./prepm4.sh $*
#	awk '/^---/ {x="F"++i".some";next}{print > x;}' $*.m4d
#	awk -b -f ./m4ddata/gawkt.awk F2.some > $*.m4

%.md: %.m4
	m4 $*.m4 > $*.md

%.pdf: %.md
	sed -i '1,/[^[:space:]]/ d' $*.md
	lua ./m4ddata/mymarkdown.lua $*.md
	xelatex --shell-escape -halt-on-error --jobname=$* "\def\varFilename{$*}\input template.tex"

init:
	touch header.tex
	mkdir -p cache
	touch $(files-md-m4)

makeconfig:
	printf "\033[2J\033[1;31m\033[47m title index \033[0m %zu\n";
	read && echo $$REPLY | ./m4ddata/makeconfig/makeconfig > config.json

ln:
	ln -s m4ddata/template.tex template.tex
	ln -s m4ddata/prepm4-v0-1.sh prepm4.sh

clean-all:
	touch frontmatter
	touch $(files-md)
	touch $(files-md-m4)
	touch F2-md.md
	rm *.some
	rm $(files-md)
	rm $(files-md-m4)
	rm frontmatter
	rm F2-md.md
	touch $(files:.m4d=.aux)
	rm $(files:.m4d=.aux)
	touch $(files:.m4d=.log)
	rm $(files:.m4d=.log)
	touch $(files:.m4d=.toc)
	rm $(files:.m4d=.toc)
	rm $(files:.m4d=.m4)
	rm $(files:.m4d=.md)
	rm $(files:.m4d=.pdf)
	touch header.tex
	rm header.tex

clean-md:
	rm *.some
	rm $(files-md)
	rm $(files-md-m4)
	rm frontmatter
	rm F2-md.md
	rm header.tex
	rm $(files:.m4d=.m4)

newdir:
	ln -s ~/data/p/proj/m4ddata .
	ln -s m4ddata/prepm4-v0-1.sh prepm4.sh .
	ln -s m4ddata/font-template.tex template.tex
