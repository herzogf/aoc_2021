#!/bin/bash

cat aoc_01.txt | sed 'p;' | tail -n +2 | sed -e 'N;s/\n/ /g' | sed 's/\([0-9]*\) \([0-9]*\)/\[ \1 -lt \2 \] \&\& echo increase/g' | head -n -1 | bash - | wc -l
