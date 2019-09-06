Projects and collaboration
==================

### Roles, scope, environment, version control etc

Projects can be created by users and can be shared in two ways: either by inviting/adding other users or making it public and let others to join in.
A /share folder belongs to each Project, that are visible and/or writable to other users depending ond their role.

Roles and project scopes

Users can be creators, administrators and collaborators. Collaborators can not alter any property of the project.
A project can be private, internal or public. Internal projects are visible to only group members and public projects are visible to every user. Users can join only those projects that are visible to them.

Version control

First Manage secrets Create token at github under developer settings Create ssh key in kooplex into .ssh folder and copy key.pub into github ssh keys Then go to project settings and Versioncontrol 


# Projects
Sub navigation bar contains the following menus:

![kooplex_project_subnavbar](figs/kooplex_project_subnavbar.png)

## My projects
This page is where a user can manage his or her own [projects](https://github.com/kooplex/kooplex-hub/wiki#project). The default view for the [project](https://github.com/kooplex/kooplex-hub/wiki#project) list is the compact view:
#### Figure:Projects:List
![kooplex_project_list](figs/kooplex_project_list.png)

In the above [Figure:Projects:List](#figureprojectslist), there are four types of items. The _test1_ and _test2_ [projects](https://github.com/kooplex/kooplex-hub/wiki#project) are distinguishable only because the [container](https://github.com/kooplex/kooplex-hub/wiki#container) of _test1_ is not present and the other one is present but stopped thus both [containers](https://github.com/kooplex/kooplex-hub/wiki#container) need to be (re)started. The notebook which belongs to _test3_ can be opened because its [container](https://github.com/kooplex/kooplex-hub/wiki#container) is present and running. The status icons of these [containers](https://github.com/kooplex/kooplex-hub/wiki#container) are shown on left side of the [project](https://github.com/kooplex/kooplex-hub/wiki#project) name. The [project](https://github.com/kooplex/kooplex-hub/wiki#project) owner of _test_ is not the authenticated user which is shown on the right side of the [project](https://github.com/kooplex/kooplex-hub/wiki#project) name.

An item of the [project](https://github.com/kooplex/kooplex-hub/wiki#project) list is a collapsible element: it should be clicked to show detailed content:
#### Figure:Projects:Collapsed Item
![kooplex_project_started_with_comments](figs/kooplex_project_started_with_comments.png)

The description of the above [Figure:Projects:Collapsed Item](#figureprojectscollapsed-item):
* **a)** Button for starting or opening the [project](https://github.com/kooplex/kooplex-hub/wiki#project)
* **b)** Description of the [project](https://github.com/kooplex/kooplex-hub/wiki#project)
* **c)** [Container](https://github.com/kooplex/kooplex-hub/wiki#container) status icon
* **d)** [Project](https://github.com/kooplex/kooplex-hub/wiki#project) name
* **e)** Button for stopping the [container](https://github.com/kooplex/kooplex-hub/wiki#container)
* **f)** Button for opening the [project](https://github.com/kooplex/kooplex-hub/wiki#project) (disable for an unstarted project)
* **g)** Button for publishing the [project](https://github.com/kooplex/kooplex-hub/wiki#project) (disable for an unstarted project)
* **h)** Version control of the [project](https://github.com/kooplex/kooplex-hub/wiki#project). The user's changes can be commited, reverted to a former commited state or user can pull remote changes.
* **i)** Settings of the [project](https://github.com/kooplex/kooplex-hub/wiki#project) where collaboration can be managed. The [image](https://github.com/kooplex/kooplex-hub/wiki#image) can be changed, [volume](https://github.com/kooplex/kooplex-hub/wiki#volume) attachments can be modified or the [project](https://github.com/kooplex/kooplex-hub/wiki#project) can be deleted here.
* **j)** The used [image](https://github.com/kooplex/kooplex-hub/wiki#image) name

## Public projects
This page is where a user can use other users' public [projects](https://github.com/kooplex/kooplex-hub/wiki#project). In the [Figure:Projects:Collapsed Item](#figureprojectscollapsed-item), there are some icons (**g)**, **h)** and **i)**) which are not shown in this case.

## New projects
This page is where a user can create a new project.
#### Figure:Projects:New project
![kooplex_new_project](figs/kooplex_new_project.png)

In the above [Figure:Projects:New project](#figureprojectsnew-project), there are the following tabs:
* **Description**: the name of the new project should be entered and the description could be given.
* **Template**: an [image](https://github.com/kooplex/kooplex-hub/wiki#image) should be chosen for the new project (default: _basic_ which provides the project with all the necessary packages)
* **Module volumes**: [module volumes](https://github.com/kooplex/kooplex-hub/wiki#volume) could be attached to the new project (default: no volume is mounted)
* **Storage volumes**: [storage volumes](https://github.com/kooplex/kooplex-hub/wiki#volume) could be attached to the new project (default: no storage is mounted)

After required fields are filled, the creation could be finished when _Public_ or _Private_ button is clicked.

