#!/bin/bash

cd ./A2
echo "The " > sentence.txt
cd ./adjectives
ls | sort -R | head -1 >> ../sentence.txt
echo " "  >> ../sentence.txt
cd ../nouns
ls | sort -R | head -1 >> ../sentence.txt
echo " " >> ../sentence.txt
cd ../adverbs
ls | sort -R | head -1 >> ../sentence.txt
echo " " >> ../sentence.txt
cd ../verbs
ls | sort -R | head -1 >> ../sentence.txt
echo " the " >> ../sentence.txt
cd ../adjectives
ls | sort -R | head -1 >> ../sentence.txt
echo " " >> ../sentence.txt
cd ../nouns
ls | sort -R | head -1 | tr -d '\n' >> ../sentence.txt
echo "." >> ../sentence.txt
cd ..
cat sentence.txt | tr -d '\n'
echo -ne '\n'
