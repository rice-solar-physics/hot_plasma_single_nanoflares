import glob
import nbformat

#sanitize kernelspec
notebooks = glob.glob("notebooks/*.ipynb")
old_envs = {}
for nb in notebooks:
    tmp = nbformat.read(nb,4)
    old_envs[nb] = tmp['metadata']['kernelspec']['name']
    tmp['metadata']['kernelspec']['name'] = 'python2'
    nbformat.write(tmp,nb)
