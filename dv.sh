#!/bin/bash

export LC_COLLATE=C
export LC_CTYPE=C
# -i.bak has bug in ubuntu
cp zhengma.txt zhengma.txt.1 && sed -e "1,9d" -e "s/^\([^ ]*\)//" zhengma.txt.1 > r.0
cp zhengma.txt zhengma.txt.1 && sed -e "1,9d" -e "s/ .*//g" zhengma.txt.1 > l.0
dvorak.sh > l.0.0
cp zhengma.txt zhengma.txt.1 && sed -e "10,42976d" -e "s/abcdefghijklmnopqrstuvwxyz/axje.uidchtnmbrl'poygk,qf;wv/" zhengma.txt.1 > h.0
paste -d "" l.0.0 r.0 > a.0
cat h.0 b.0 a.0 > dvzhengma.txt
