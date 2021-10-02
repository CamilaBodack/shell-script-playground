#!/bin/bash

path_to_folder=""


listLetter=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z")


arrLen=${#listLetter[@]}


for (( i=0; i<${arrLen}; i++ ));
do cd "$path_to_folder/${listLetter[$i]}"
echo `pwd`


# Adjectives
echo "Moving Adjectives . . ."
mkdir adjectives
for i in `find . -maxdepth 1 -iname '*.json' | xargs grep 'parts-of-speech": "Adjective' -sl`; do `mv "$i" ./adjectives`; done

# Adverbs
echo "Moving Adverbs . . ."
mkdir adverbs
for i in `find . -maxdepth 1 -iname '*.json' | xargs grep 'parts-of-speech": "Adverb' -sl`; do `mv "$i" ./adverbs`; done

# Conjunction
mkdir conjunction
echo "Moving conjunction . . ."
for i in `find . -maxdepth 1 -iname '*.json' | xargs grep 'parts-of-speech": "Conjunction' -sl`; do `mv "$i" ./conjunction`; done

# Interjection
mkdir interjection
echo "Moving interjection . . ."
for i in `find . -maxdepth 1 -iname '*.json' | xargs grep 'parts-of-speech": "Interjection' -sl`; do `mv "$i" ./interjection`; done

# Pronouns
mkdir pronouns
echo "Moving pronouns . . ."
for i in `find . -maxdepth 1 -iname '*.json' | xargs grep 'parts-of-speech": "Pronoun' -sl`; do `mv "$i" ./pronouns`; done

# Nouns
mkdir nouns
echo "Moving nouns . . ."
for i in `find . -maxdepth 1  -iname '*.json' | xargs grep 'parts-of-speech": "Noun' -sl`; do `mv "$i" ./nouns`; done

# Prepostion
mkdir preposition
echo "Moving preposition . . ."
for i in `find . -maxdepth 1 -iname '*.json' | xargs grep 'parts-of-speech": "Preposition' -sl`; do `mv "$i" ./preposition`; done

# Verbs
mkdir verbs
echo "Moving verbs . . ."
for i in `find . -maxdepth 1  -iname '*.json' | xargs grep 'parts-of-speech": "Verb' -sl`; do `mv "$i" ./verbs`; done

done