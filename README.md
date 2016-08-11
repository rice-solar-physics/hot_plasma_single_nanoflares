# Inference of Heating Properties from "Hot" Non-flaring Plasmas in Active Region Cores I. Single Nanoflares
[![Build Status](https://travis-ci.org/wtbarnes/astro_paper_template.svg?branch=master)](https://travis-ci.org/wtbarnes/astro_paper_template)
[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/wtbarnes/astro_paper_template)

Run your paper with a single command through the power of [nbflow](https://github.com/jhamrick/nbflow), have it rebuilt at each commit (thanks to [Travis CI](https://travis-ci.org/)) and then published to [a clean and simple webpage](https://wtbarnes.github.io/astro_paper_template/). Others can simply view your current draft, offer feedback via GitHub issues, or download and build the paper themselves! astro_paper_template is meant to be simple and very configurable. It is not at all an original tool or concept, but rather brings together several great tools and ideas to allow for self-contained, reproducible workflows that produce publication-quality results.

This project includes `.cls` and `.bst` files from [AASTeX](http://journals.aas.org/authors/aastex.html), a set of templates used by publications like The Astrophysical Journal and Astronomy and Astrophysics. However, any TeX template can be used.

## Citation
```
Place BibTeX entry here.
```

## Dependencies
All of the following are required to run the simulation, do the data analysis, build the figures, and compile all of these elements into the PDF of the paper. If you have trouble installing or building any of the components, particularly in the [C/C++ section](###c/c++), please [create an issue](https://github.com/rice-solar-physics/hot_plasma_single_nanoflares/issues) and let us know!
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

You can also install all of these using PyPI by running `pip install -r requirements.txt`. Additionally, you'll need [nbflow](https://github.com/jhamrick/nbflow) which is not currently available via PyPI.

### C/C++
There are also a few C/C++ dependencies that are a bit more difficult to obtain. We hope to fix this in the future such that the install/build process is a bit more streamlined.

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
Navigate to `$HOME/astro_paper_template/site/output/index.html` to see the sample webpage. Check out the [example site](https://wtbarnes.github.io/astro_paper_template/) produced with this repository.

## Automatic Site Builds with Travis CI
[Travis CI](https://travis-ci.org/) is a continuous integration service that is easily configured as a GitHub webhook. Essentially, Travis will watch a branch of your repository and kick off builds (as described in the `.travis.yml` file) anytime it sees a new commit. In this case, Travis runs our analysis, compiles the TeX document and then publishes it all to a single webpage. To enable Travis builds for your repo, sign in with your GitHub account and click the switch for the appropriate repo.

The site is published via [GitHub Pages](https://pages.github.com/) so we'll need to create a `gh-pages` branch. This is where the site will live. Additionally, in order to allow Travis to push the site to this branch automatically, you'll need to configure your own [personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) `GH_TOKEN`. The steps for properly encrypting it can be found [here](http://blog.mathieu-leplatre.info/publish-your-pelican-blog-on-github-pages-via-travis-ci.html).
