Folder structure in a project container
===================

Project container's folder structure

The `/share` directory contains all the shared folders for the projects that are assigned to the given container. One can access multiple projects in a container.

The `/$USER` home is a private directory and accessible from all container.

`/workdir` is an extra private folder for the user, but it belongs to the certain project.

It is possible to use accounts for version control systems such as GitHub or private GitLab. The user needs to create a token and paste it in the manage secrets menu. After that the chosen repositories will appear in the `/git` directory.
Folder permissions Folder name  /       /$USER  /share/$projectname     /workdir/$projectname   /report/_prepare        /git/$repository
Permissions     Read-only       Read-Write      Read-Write      Read-Write      Read-Write
Purpose                 Private, accessible from every container        All collaborator of the same project have read-write access to this folder. Large data files, templates and other commonly used files should be placed here.    Contents for reports should placed into separate folders.       Version controlled repositories can be accessed here.

Reports

The types of reports are explained in the other section. Reports can be made only out of the folders placed into /report/_prepare directory. Once a report is created it's snapshot is saved into the /report directory as a read-only folder.

