#!/bin/bash

cat aoc_02.txt | sed -e 's/forward \(.*\)/((forwardCounter+=\1))/g' -e 's/down \(.*\)/((depthCounter+=\1))/g' -e 's/up \(.*\)/((depthCounter-=\1))/g' | cat - <(echo 'echo $((forwardCounter*depthCounter))') | bash -
