import os
import glob
import nbformat
from nbflow.scons import setup

#sanitize kernelspec
notebooks = glob.glob("notebooks/*.ipynb")
old_envs = {}
for nb in notebooks:
    tmp = nbformat.read(nb,4)
    old_envs[nb] = tmp['metadata']['kernelspec']['name']
    tmp['metadata']['kernelspec']['name'] = 'python2'
    nbformat.write(tmp,nb)

env = Environment(ENV=os.environ)
setup(env,["notebooks"])

#round up all the figures/files that are changing
results = sorted(glob.glob('results/*.tex'))
figures = sorted(glob.glob('results/*.eps'))

#build PDF and tell scons about the dependencies
env.PDF('tex/paper.pdf','tex/paper.tex')
env.Depends('tex/paper.pdf',results + figures)

#revert kernelspec
for k in old_envs:
    tmp = nbformat.read(k,4)
    tmp['metadata']['kernelspec']['name'] = old_envs[k]
    nbformat.write(tmp,k)
