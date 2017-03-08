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

#revert kernelspec
#for k in old_envs:
#    tmp = nbformat.read(k,4)
#    tmp['metadata']['kernelspec']['name'] = old_envs[k]
#    nbformat.write(tmp,k)
