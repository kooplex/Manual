Main concepts
========

Docker and containers, Notebooks,

Docker engine

[Docker](https://www.docker.com/why-docker) is a virtualization engine, which allows services to run on the same machine but with completely indepentent environments. These environments are called docker images and their instance is a container. A container is like a leightweight virtual machine.

<span id="notebook"></span>
### Notebooks

In Kooplex we call 'notebooks' all browser based environments like Jupyter or Rstudio, that users can use for coding and development. These notebooks have well established communities, they are open source and used by millions around the world.
Plese visit Jupyter and Rstudio Server for further informations.

Notebooks and containers

All notebooks run in a separate docker container. These containers have limited resources, that are sufficient for writing new code, but not enough for large calculations. Containers can be stopped and then deleted. Stopped containers don't consume any resources. Deleting containers is needed if you want ot switch image or use an updated image. No data will be deleted, which reside in any of the /home folders (Folder structure explained).
When the user clicks on
under the Projects or Courses menu

then a docker container starts. Clicking the

button will redirect to the notebook servers url.
Always stop your containers, when not using them! That will save resources for others. Thank You!

### Container
In this application, the _container_ always refers to [Docker container](https://www.docker.com/what-container). Docker computer program implements OS-level, lightweight virtualization (a.k.a. containerization). Therefore several containers can be run within a single server simultaneously (due to sharing of operating system kernel) and can cooperate with each other. Each container can only use the allocated resources and the mounted [volumes](#volume) which were (largely) fixed already at the container creation time and [volume](#volume) mounting at runtime is not possible. The most relevant containers are [project](#project)-related ones from a user point of view. These are created over a specified [image](#image) (a.k.a. template) and always run a [notebook server](#notebook).

### Image
In this application, the _image_ always refers to [Docker image](https://docs.docker.com/glossary/?term=image):
> Docker images are the basis of [containers](#container). An Image is an ordered collection of root filesystem changes and the corresponding execution parameters for use within a container runtime. An image typically contains a union of layered filesystems stacked on top of each other. An image does not have state and it never changes.

From a user point of view, these images behave like starting templates for a [project](#project), which can be either an empty template or you can clone an already available [project](#project). When selecting an empty template choose by the image name. The basic image provides your project with all the necessary packages.
In case you clone a project the following project groups are defined:
  - **mine**: those projects you created so far.
  - **shared**: those projects other users created but you are a collaborator of.
  - **public**: those projects that anyone can see.

### Notebook
The _Jupyter notebook_ could refer to either a web-based application or a notebook document:
> **A web application**: a browser-based tool for interactive authoring of documents which combine explanatory text, mathematics, computations and their rich media output.

> **Notebook documents**: a representation of all content visible in the web application, including inputs and outputs of the computations, explanatory text, mathematics, images, and rich media representations of objects.

(For more information, please visit the [web-site](https://jupyter-notebook.readthedocs.io/en/stable/notebook.html))

Here we have made a distinction between them: the web app is alluded by _notebook server_ and the document is called simply by _notebook_. The system starts [containers](#container) for each user and [project](#project).

### Project
The _project_ is a central item of Kooplex Hub. It links all of the igredients which are related to project work such as a repository of documents, [notebooks](#notebook), (smaller) data files, discussions etc. Project owner can choose and change the scope of it (private, internal, public, it is agreement with [GitLab project visibility](https://docs.gitlab.com/ce/public_access/public_access.html#visibility-of-projects)) and can add members (from the set of existing users). There is a possibility to put certain project files under version control because their revision history can be stored in a web-based Git repository using GitLab ([see more information](https://docs.gitlab.com/ce/user/project/index.html)). GitLab also provides discussion forum where project-related issues (questions, suggested developments etc.) can be discussed by project members.

### Report
Notebooks can be published in any of the following ways:
- **Interactive document (Dashboard)**: there is an ability to run a notebook as standalone application and the author of notebook can arrange outputs (text, plots, widgets etc.) in grid- or report-like layouts ([see more information](http://jupyter-dashboards-layout.readthedocs.io/en/latest/#jupyter-dashboards-layout-extension)). In this way, other people can enter the inputs of computations which can have an impact on the outputs (e.g. plots) but source code cannot be changed.
- **Static document (HTML)**: this option is a simpler way to export a notebook.

### Volume
Here the _volume_ always refers to [Docker volume](https://docs.docker.com/glossary/?term=volume):
> A volume is a specially-designated directory within one or more [containers](#container) that bypasses the Union File System. Volumes are designed to persist data, independent of the [container's](#container) life cycle. Docker therefore never automatically delete volumes when you remove a [container](#container), nor will it "garbage collect" volumes that are no longer referenced by a [container](#container).

There are two types of volumes in this application:
- **Module volume**: it contains installed conda environments, python and other packages. When you run a [notebook](#notebook) only one conda environment can enabled at once. However, other packages will be available.
- **Storage volume**: it contains data from host filesystem.

## General guidelines
### Navigation bar
Navigation bar contains the following menus:
![kooplex_navbar](figs/kooplex_navbar.png)

Only _Reports_ and _Help_ menus are available for unauthenticated users. The other menus check if a user is logged in or not. In the latter case, it redirects to login page. See details below.

### Login page
This page is where credentials can be provided to log in which involve username and password. Furthermore, guest user can register and a (forgotten) password can be reset.

### Reports
This page is where a user can access digested scientific output. [See details »](https://github.com/kooplex/kooplex-hub/wiki/Reports)

### Projects
This page is where a user can manage jupyter notebook projects. [See details »](https://github.com/kooplex/kooplex-hub/wiki/Projects)

### Gitlab
This page is where a user can browse project or file issues. [See details »](https://docs.gitlab.com/ce/user/)

### Owncloud
This page is where a user can access cloud storage. [See details »](https://doc.owncloud.org/server/latest/user_manual/)

### Help
This involves tutorial videos, this user documentation and contact information.
