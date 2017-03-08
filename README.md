# Inference of Heating Properties from "Hot" Non-flaring Plasmas in Active Region Cores I. Single Nanoflares
[![Build Status](https://travis-ci.org/rice-solar-physics/hot_plasma_single_nanoflares.svg?branch=master)](https://travis-ci.org/rice-solar-physics/hot_plasma_single_nanoflares)

This repository holds all of the text and analysis and simulation code needed to build and compile the paper [Barnes et al. (2016)](http://adsabs.harvard.edu/abs/2016ApJ...829...31B). Check out the [abstract and PDF here](https://rice-solar-physics.github.io/hot_plasma_single_nanoflares/).

Dependency, install, and build information is included below. The idea behind this repository is to create a way for other researchers to reproduce our experiment from scratch (as much as possible). Feedback is welcome via [issues](https://github.com/rice-solar-physics/hot_plasma_single_nanoflares/issues) or [pull requests](https://github.com/rice-solar-physics/hot_plasma_single_nanoflares/pulls). At each commit, the entire experiment is rebuilt using [Travis CI](https://travis-ci.org/), a continuous integration service. This ensures that any changes to our simulation or analysis code do not change our results in any unexpected ways. This build process also generates a [simple webpage](https://rice-solar-physics.github.io/hot_plasma_single_nanoflares/) with the final PDF of our paper.

If you would like to create a similar reproducible workflow for one of your projects, we provide an [easily configurable template](https://github.com/wtbarnes/astro_paper_template). Feel free to clone and modify it as needed.

## Citation
```
@ARTICLE{2016ApJ...829...31B,
   author = {{Barnes}, W.~T. and {Cargill}, P.~J. and {Bradshaw}, S.~J.},
    title = "{Inference of Heating Properties from ''Hot'' Non-flaring Plasmas in Active Region Cores. I. Single Nanoflares}",
  journal = {\apj},
archivePrefix = "arXiv",
   eprint = {1608.04776},
 primaryClass = "astro-ph.SR",
 keywords = {hydrodynamics, plasmas, Sun: corona },
     year = 2016,
    month = sep,
   volume = 829,
      eid = {31},
    pages = {31},
      doi = {10.3847/0004-637X/829/1/31},
   adsurl = {http://adsabs.harvard.edu/abs/2016ApJ...829...31B},
  adsnote = {Provided by the SAO/NASA Astrophysics Data System}
}
```

## Dependencies
All of the following are required to run the simulation, do the data analysis, build the figures, and compile all of these elements into the PDF of the paper. If you have trouble installing or building any of the components, particularly in the [C++ section](#cc), please [create an issue](https://github.com/rice-solar-physics/hot_plasma_single_nanoflares/issues) and let us know!

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

Alternatively, if you're using conda, you can clone the included conda environment by running `conda env create -f environment.yml` and then switching to it by running `source activate hot_plasma_1_paper`.

### C++
There are also a few C/C++ dependencies that are a bit more difficult to obtain. Clone all of these repositories into the same root directory, `$EXP_DIR`.

* [ebtel++](https://github.com/rice-solar-physics/ebtelPlusPlus) -- a C++ implementation of the two-fluid EBTEL model; see install instructions
* [IonPopSolver](https://github.com/rice-solar-physics/IonPopSolver) -- code for computing time-dependent fractional ionizations; see install instructions

### LaTeX
To compile the PDF, you'll need a working install of LaTeX. The easiest way to obtain and manage a LaTeX installation is via [TeXLive](https://www.tug.org/texlive/acquire.html). The `.cls` and `.bst` files from [AASTeX](http://journals.aas.org/authors/aastex.html) are included in this repo.

### Environment Variables
To make it easy for the analysis notebooks to find all of the needed executables, we've assumed that EBTEL_analysis, EBTEL-C, EBTEL-2fluid_repo, and IonPopSolver are all installed in the same directory, `$EXP_DIR`. Set an environment variable `EXP_DIR` with this directory, e.g. if `$EXP_DIR` is at `/home/wtbarnes/research`, in bash,
```bash
export EXP_DIR=/home/wtbarnes/research
```

## Building This Paper
After installing and correctly configuring all of the above dependencies, run
```Shell
$ scons
```
inside of the repository that you cloned. This will run the EBTEL and IonPopSolver simulations, build all of the necessary plots and tables, and then compile the PDF with LaTeX. The resulting PDF will be in `tex/paper.pdf` and all of the generated results (e.g. data files and plots) will be in `results/`. If for some reason an exception is thrown because Jupyter cannot find the needed kernel, you can run `python sanitize_kernels.py` to clean up the notebook kernel names.

To build the resulting webpage, run
```Shell
$ cd site
$ make
```
and open `site/output/index.html` in a web browser.
