#!/bin/sh

rm -rf ~/test/*
touch ~/test/bd10{2..9}.html

cd ~/test

rename "bd" "" *.html
