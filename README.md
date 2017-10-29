# Introduction to awk programming 2016
Script, resources and example code for the course
**Introduction to awk programming 2016** taking place at the
Ruprecht-Karls-Universität Heidelberg from 15th -- 17th August 2016.

Included files:
- [awk_course.pdf](awk_course.pdf): The main course notes
- [LICENCE](LICENCE): Overview how files in this repository are licenced
- [resources/](resources/): Data neccessary to run the examples and do the exercises.

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
