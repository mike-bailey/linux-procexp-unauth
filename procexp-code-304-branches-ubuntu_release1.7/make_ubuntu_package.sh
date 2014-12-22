find . -name "*.pyc"|xargs rm -f 
SVNVERSION=`svnversion`

echo "procexp (1.7.$SVNVERSION-0ubuntu1) precise; urgency=low

  * Release 1.7 (Closes: #nnnn)  <nnnn is the bug number of your ITP>

 -- Carl Wolff <procexp@wolff-online.nl>  Sat, 27 Dec 2013 17:00:00 +0100" > ./debian/changelog

tar -cvzf  ../procexp_1.7.$SVNVERSION.orig.tar.gz ./procexp
debuild -us -uc --source-option=--include-binaries
