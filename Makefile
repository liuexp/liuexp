site: site.hs
	ghc --make site.hs

html:
	./site rebuild
	cp -r _site/* ../liuexp.github.com
	cd ../liuexp.github.com
	git add -A .
	git commit -a -m "meow".
	git push

all: site html

