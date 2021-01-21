User working environments
=================

Every user can create *environments* in which they can
* create and run programs in various programming languages
* access their own files
* access shared files from projects
* access cloud based synchronized folders
  
Each *environment* is created from an image that is made up of various packages, libraries and a so called [notebook server](Notebooks/Main.md), that provides users with an IDE that can be accessed from any browser. These are isolated virtual machines, only the user has access to them.


<div align=center>
<img src="./img/environmental_panel-wd.png"/>
</div>

It can be *started*, then *opened* and *stopped*. When running this *environment* the given *message* on the panel might help to resolve the conflict, or should be reported to the site administrators when asking for help.
When it is stopped only the files and folders are kept that reside in the [permanent storage](Storage/main.md) 

The resources of these *environments* are limited to short computations with moderate memory consumption. These limitations should be suitable for developing a new code and algorithms but if needed then it can be modified for a project.

### Configure an environment
#### Image type
Docker images can be created by authorized users, which are then added to the pool of available images. [Read more](https://docs.docker.com/engine/reference/commandline/images/) about Docker images.
#### Projects
Any number of [projects](Project/Main.md) can be set for each *environment*, and also a project an be associated with any number of *environments*. For each project a folder will appear in the *workdir_projects* folder and in the *report_prepare* folder.
#### Volumes

#### Synchronized files
You can add folders from the Seafile cloud based file storing and sharing platform. Read more about [file synchronization](Seafile/Main.md)

#### Version control
Repositories can be added from Gitea/Github etc. Read more about [repository adding](VersionControl/Main.md)






