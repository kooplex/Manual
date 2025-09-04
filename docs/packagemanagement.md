---
title: Package management - Python, R
description: 
published: true
date: 2024-11-05T10:22:17.745Z
tags: conda, package, module, uv, pyenv, cran
editor: markdown
dateCreated: 2024-10-17T11:02:57.537Z
---


## Package management for Python


<div id="withconda"></div>

### Create a `conda` environment
``` bash
> conda create -y --name new_env # Create the nw environment
> . /opt/conda/bin/activate # Activate it
> conda activate new_env
> conda install -y python=3.10 # Install python interpreter

# Install packages
> conda install -y -c conda-forge --force cudnn cudatoolkit=11.8.0` 
> conda install -y pip ipykernel # Install ipykernel if you want to use it in notebooks
> pip install nvidia-cudnn-cu11==8.6.0.163
> pip install tensorflow==2.12
> ipython kernel install --user --name=new-env - this is needed only if you install it to path, where jupyter is not seeing it.
```

### Use a `conda` environment
Before activating a conda environment type:
``` bash
> . /opt/conda/bin/activate
```

#### 1. method `conda activate <env_name>`
	
  * for a locally created conda environment - with `conda create -n <env_name>` that resides in `~/.conda/envs/<env_name>`
	
  * or a conda environment that comes with the image 
  
For example
```
> . /opt/conda/bin/activate
> conda activate tensorflow
```

#### 2. method `conda activate <path_to_env>`
* for a conda environment created into folder or attachment - for example with the command 'conda create -p /v/attachments/<attachment_name>'

Then type
```
> ipython kernel install --user --name=tensorflow
```
The 'kernel install command' is needed only once. This will install the kernel into userspace (into `/v/$NB_USER/.local/share/jupyter/kernels/tensorflow` user directory) and jupyter will be able to use it in the future.
E.g.
```
> . /opt/conda/bin/activate
> conda activate /v/attachments/tensorflow/
> ipython kernel install --user --name=tensorflow
```

List available kernels to check whether it worked
```
jupyter-kernelspec list
```

![edu-activate-condaenv.gif](/kooplex-manual/environment/activate-condaenv.gif)

<div id="uv"> </div>

### With `uv`
An extremely fast Python package installer and resolver, written in Rust
Read about `uv` here:
* https://astral.sh/blog/uv
* https://github.com/astral-sh/uv

Activate it with:
```
> . /opt/python-packages/bin/activate
```
Then install a package 
```
uv pip install  sqlalchemy pandas
```

<div id="poetry"> </div>

### With `poetry`
Poetry-kernel is installed to v8 images, therefore it is possible to use poetry environments in notebooks.
Visit https://python-poetry.org/ for documentation.

<div id="pyenv"> </div>

### With `pyenv`
witch between Python versions

To select a Pyenv-installed Python as the version to use, run one of the following commands:
```
pyenv shell <version> -- select just for current shell session
pyenv local <version> -- automatically select whenever you are in the current directory (or its subdirectories)
pyenv global <version> -- select globally for your user account
```
E.g. to select the above-mentioned newly-installed Python 3.10.4 as your preferred version to use: 
``` 
pyenv global 3.10.4
```

Now whenever you invoke python, pip etc., an executable from the Pyenv-provided 3.10.4 installation will be run instead of the system Python.

Using "system" as a version name would reset the selection to your system-provided Python.

### non-Python applications
Using the right image, one might be able to install or compile applications into an attachement or volume, which can be mounted to any other environment.