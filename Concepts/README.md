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
