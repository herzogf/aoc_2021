#!/bin/bash

# first puzzle
cat aoc_02.txt | sed -e 's/forward \(.*\)/((forwardCounter+=\1))/g' -e 's/down \(.*\)/((depthCounter+=\1))/g' -e 's/up \(.*\)/((depthCounter-=\1))/g' | cat - <(echo 'echo $((forwardCounter*depthCounter))') | bash -

# second puzzle
cat aoc_02.txt | sed -e 's/forward \(.*\)/((forwardCounter+=\1));((depthCounter+=aimCounter*\1))/g' -e 's/down \(.*\)/((aimCounter+=\1))/g' -e 's/up \(.*\)/((aimCounter-=\1))/g' | cat - <(echo 'echo $((forwardCounter*depthCounter))') | bash -
