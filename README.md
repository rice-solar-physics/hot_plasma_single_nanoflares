# Inference of Heating Properties from "Hot" Non-flaring Plasmas in Active Region Cores I. Single Nanoflares

This repository holds all of the text and analysis and simulation code needed to build and compile the paper. Dependency, install, and build information is included below. The idea behind this repository is to create a way for other researchers to reproduce our experiment from scratch (as much as possible). Feedback is welcome via [issues]() or [pull requests](). At each commit, the entire experiment is rebuilt using [Travis CI](https://travis-ci.org/), a continuous integration service. This ensures that any changes to our simulation or analysis code do not change our results in any unexpected ways. This build process also generates a [simple webpage](#) with the final PDF of our paper.

If you would like to create a similar reproducible workflow for one of your projects, we provide an [easily configurable template](https://github.com/wtbarnes/astro_paper_template). Feel free to clone and modify it as needed. 

## Citation
```
Place BibTeX entry here.
```

## Dependencies
All of the following are required to run the simulation, do the data analysis, build the figures, and compile all of these elements into the PDF of the paper. If you have trouble installing or building any of the components, particularly in the [C/C++ section](#cc), please [create an issue](https://github.com/rice-solar-physics/hot_plasma_single_nanoflares/issues) and let us know!

### Python
Here are the standard Python dependencies. We recommend [conda](https://www.continuum.io/downloads) for managing your Python install and all related dependencies.

* AstroPy
* IPython
* Jupyter
* matplotlib
* NumPy
* scons
* seaborn
* SciPy

You can also install all of these using PyPI by running `pip install -r requirements.txt`. Additionally, you'll need to install the following dependencies manually via `git`,

* [nbflow](https://github.com/jhamrick/nbflow) -- follow the install instructions
* [EBTEL_analysis](https://github.com/wtbarnes/EBTEL_analysis) -- no install needed, we'll just add the code to our path in the notebook; clone it into the directory `$EXP_DIR`

### C/C++
There are also a few C/C++ dependencies that are a bit more difficult to obtain. We hope to fix this in the future such that the install/build process is a bit more streamlined. Clone all of these repositories into the same root directory, `$EXP_DIR`.

* [EBTEL-C](https://github.com/rice-solar-physics/EBTEL_C) -- a C implementation of the original single-fluid EBTEL model; see install directions
* [EBTEL-2fluid_repo](https://github.com/wtbarnes/EBTEL-2fluid_repo) -- a two-fluid version of the EBTEL model; install instructions are identical to EBTEL-C
* [IonPopSolver](https://github.com/rice-solar-physics/IonPopSolver) -- code for computing time-dependent fractional ionizations; see install instructions

### LaTeX
To compile the PDF, you'll need a working install of LaTeX. The easiest way to obtain and manage a LaTeX installation is via [TeXLive](https://www.tug.org/texlive/acquire.html). The `.cls` and `.bst` files from [AASTeX](http://journals.aas.org/authors/aastex.html) are included in this repo.

### Environment Variables
To make it easy for the analysis notebooks to find all of the needed executables, we've assumed that EBTEL_analysis, EBTEL-C, EBTEL-2fluid_repo, and IonPopSolver are all installed in the same directory, `$EXP_DIR`. Set an environment variable `EXP_DIR` with this directory, e.g. if `$EXP_DIR` is at `/home/wtbarnes/research`, in bash,
```bash
export EXP_DIR=/home/wtbarnes/research
```

## Building This Paper
Building this sample repository and the associated webpage yourself is very easy. Provided you have a working Python (2.7) and LaTeX installation, configure a virtual envrionment or [conda environment](http://conda.pydata.org/docs/using/envs.html), clone this repository in `$HOME/astro_paper_template` and run,
```Shell
$ pip install -r requirements.txt
$ git clone https://github.com/jhamrick/nbflow.git ../nbflow && cd ../nbflow
$ python setup.py install
$ cd astro_paper_template
$ scons
$ cd site && make
```
