# Introduction to awk programming 2016
Script, resources and example code for the course
**Introduction to awk programming 2016** taking place at the
Ruprecht-Karls-Universität Heidelberg from 15th -- 17th August 2016.

Included files:
- [awk_course.pdf](awk_course.pdf): The main course notes
- [LICENCE](LICENCE): Overview how files in this repository are licenced
- [resources/](resources/): Data neccessary to run the examples and do the exercises.

## Copyright of material from project Gutenberg
From 3rd March 2018 till October 2021, access to Project Gutenberg was blocked in Germany
due to a court order, see the
[official statement from PGLAF](https://cand.pglaf.org/germany/index.html). 
As similar situations might occur in the future,
It is up to you to verify the books used in this course are in the public domain. The following books are used:
- Dracula by Bram Stoker
- The Adventures of Tom Sawyer by Mark Twain
- Adventures of Huckleberry Finn by Mark Twain
- The Prince by Nicolo Machiavelli
- Leaves of Grass by Walt Whitman
- Emma by Jane Austen
- Sense and Sensibility by Jane Austen
- The Picture of Dorian Gray by Oscar Wilde
- The Yellow Wallpaper by Charlotte Perkins Gilman
- Grimms’ Fairy Tales by Jacob Grimm and Wilhelm Grimm
- Metamorphosis by Franz Kafka
- The Importance of Being Earnest -- A Trivial Comedy for Serious People by Oscar Wilde
- The Divine Comedy -- The Vision of Hell, Purgatory and Paradise by Dante Alighieri
- A Tale of Two Cities -- A Story of the French Revolution by Charles Dickens

## Setup
Before being able to do the Project Gutenberg-related exercises, you should
run the script ``resources/gutenberg/download.sh`` from the
[resources/gutenberg/](resources/gutenberg/) directory, i.e.
```
cd resources/gutenberg
./download.sh
```

If you want a more fancy ``.bashrc`` configuration, e.g. a coloured
output of grep or a colored command prompt, run the ``install.sh``
script from the [files_for_home/](files_for_home/) directory.
```
cd files_for_home
./install.sh
```
Note that this will replace your current ``.bashrc`` and your
current ``.profile`` in case these files exist.

## Course page
The **solutions** to the exercises as well as some further information about the course
can be found on the [course website](http://blog.mfhs.eu/teaching/introduction-to-awk-programming-2016/).

## Citing
If you use any of the script examples or the course notes,
please cite my work:
[![DOI](https://zenodo.org/badge/59674153.svg)](https://zenodo.org/badge/latestdoi/59674153)
