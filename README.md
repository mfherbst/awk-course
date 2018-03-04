# Introduction to awk programming 2016
Script, resources and example code for the course
**Introduction to awk programming 2016** taking place at the
Ruprecht-Karls-Universität Heidelberg from 15th -- 17th August 2016.

Included files:
- [awk_course.pdf](awk_course.pdf): The main course notes
- [LICENCE](LICENCE): Overview how files in this repository are licenced
- [resources/](resources/): Data neccessary to run the examples and do the exercises.

## Court order to block access from Project Gutenberg in Germany
As of 3rd March 2018 access to Project Gutenberg is blocked from Germany
due to a court order, see the
[official statement from PGLAF](https://cand.pglaf.org/germany/index.html)
(the organisation hosting Project Gutenberg) for details.
This implies as a user with a German IP address you will be unable to use the
download script mentioned below.
Unfortunately many of the exercises depend on the books from Project Gutenberg
and whilst it is possible to do them without the proper book files,
the results might deviate.
I am currently unaware of a good alternative to obtain the Project Gutenberg
books in a simple way and I am unsure about the
legal status regards hosting them myself.
In the lack of time on my side the excercises will stay broken for now,
which I very much regret.

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
