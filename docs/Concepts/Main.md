Main concepts
========

### Docker engine

[Docker](https://www.docker.com/why-docker) is a virtualization engine, which allows services to run on the same machine but with completely indepentent environments. These environments are called docker images and their instance is a container. A container is like a leightweight virtual machine.

<span id="notebook"></span>
### Notebooks

In Kooplex we call `notebooks` all browser based environments like Jupyter or Rstudio, that users can use for coding and development. These notebooks have well established communities, they are open source and used by millions around the world.

The _Jupyter notebook_ could refer to either a web-based application or a notebook document:
> **A web application**: a browser-based tool for interactive authoring of documents which combine explanatory text, mathematics, computations and their rich media output.

> **Notebook documents**: a representation of all content visible in the web application, including inputs and outputs of the computations, explanatory text, mathematics, images, and rich media representations of objects.

(For more information, please visit the [web-site](https://jupyter-notebook.readthedocs.io/en/stable/notebook.html))

Here we have made a distinction between them: the web app is alluded by _notebook server_ and the document is called simply by _notebook_. The system starts [containers](#container) for each user and [project](#project).

### Notebooks and environments (pods or containers)

All notebooks run in a separate environment. These environments have limited resources, that are sufficient for writing new code, but not enough for large calculations. 

### Environment
In this application, the _environment_ always refers to a Kubernetes *pod* or a [Docker container](https://www.docker.com/what-container). Docker computer program implements OS-level, lightweight virtualization (a.k.a. containerization). Therefore several containers can be run within a single server simultaneously (due to sharing of operating system kernel) and can cooperate with each other. Each container can only use the allocated resources and the mounted [volumes](#volume) which were (largely) fixed already at the container creation time and [volume](#volume) mounting at runtime is not possible. The most relevant containers are [project](#project)-related ones from a user point of view. These are created with a specified [image](#image) (a.k.a. template) and always run a [notebook server](#notebook).


### Report
Notebooks can be published in any of the following ways:
- **Interactive document (Dashboard)**: there is an ability to run a notebook as standalone application and the author of notebook can arrange outputs (text, plots, widgets etc.) in grid- or report-like layouts ([see more information](http://jupyter-dashboards-layout.readthedocs.io/en/latest/#jupyter-dashboards-layout-extension)). In this way, other people can enter the inputs of computations which can have an impact on the outputs (e.g. plots) but source code cannot be changed.
- **Static document (HTML)**: this option is a simpler way to export a notebook into a static page or with some limited interactivity.
  **API or REST service**: This is a service that can handle requests

### Volume
Here the _volume_ always refers to [Docker volume](https://docs.docker.com/glossary/?term=volume):
> A volume is a specially-designated directory within one or more [containers](#container) that bypasses the Union File System. Volumes are designed to persist data, independent of the [container's](#container) life cycle. Docker therefore never automatically delete volumes when you remove a [container](#container), nor will it "garbage collect" volumes that are no longer referenced by a [container](#container).

There are two types of volumes in this application:
- **Module volume**: it contains installed conda environments, python and other packages. When you run a [notebook](#notebook) only one conda environment can enabled at once. However, other packages will be available.
- **Storage volume**: it contains data from host filesystem.

