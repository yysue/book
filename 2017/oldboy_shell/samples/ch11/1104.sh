#/bin/sh

rm -rf ~/test
mkdir -p ~/test
touch ~/test/{test.txt,a.txt,b.txt,c.txt}

cd ~/test
for filename in `ls|grep "txt$"`
do
    mv $filename `echo $filename|cut -d . -f1`.gif
done
