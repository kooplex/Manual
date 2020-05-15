Folderstructure in a Course container
=======================

## For students

* `/<user_name>`: a private folder
* `/workdir`: all assignments will be copied into a separate folder, which is going to be the student's working area.
* `/feedback`: once an assignment is submitted and corrected a new folder will be created with optionally the teacher's feedback
* `/course`: course materials, files that need not to be edited (lecture notes, additinal codes, datafiles etc)

All assignments will appear in the `/workdir` directory in separate folders.

After submitting/collecting an assignment the corrector will get copies of the students' folders and by using the feedback form they will be able to grade the work and give feedbacks. 
Once a feedback was given a folder will appear in the `/feedback` directory.  

The contents of previous courses will be archived and they go into the `/archive` folder. This folder is not yet automatically deleted, but we encourage everyone to keep valuable files in the `/<user_name>` directory.
#### An overview of folder permissions for students

| Folder name      | Permissions | Purpose                                                                          |
|------------------|-------------|----------------------------------------------------------------------------------|
| `/`              | Read-only   |                                                                                  |
| `/<user_name>`   | Read-Write  | Private, accessible from every container                                         |
| `/workdir`       | Read-Write  | Folders here contain assignments, and they will be submitted/collected from here |
| `/course/public` | Read-only   | Place for other files (data, templates etc)                                      |
| `/feedback`      | Read-only   | A copy of submitted work and teachers' feedback                                  |
| `/archive`       | Read-only   | An archive of previous courses                                                   |

Course container's folder structure for teachers

* Folders placed into `/courses/private` can be assigned to students. These folders should contain only the notebooks and those files in which students are expected to edit. Large datafiles, that need to be only read during for an assignment should be copied into `/courses/public`.

#### An overview of folder permissions for teachers

| Folder name       | Permissions | Purpose                                                                          |
|-------------------|-------------|----------------------------------------------------------------------------------|
| `/`               | Read-only   |                                                                                  |
| `/<user_name>`    | Read-Write  | Private, accessible from every container                                         |
| `/workdir`        | Read-only   | Folders here contain assignments, and they will be submitted/collected from here |
| `/course/private` | Read-Write  | Every folder contains the necessary files (e.g. a notebook) for an assignment    |
| `/course/public`  | Read-Write  | Place for other files (data, templates etc)                                      |
| `/feedback`       | Read-Write  | A copy of submitted work and teachers' feedback                                  |
| `/archive`        | Read-only   | An archive of previous courses                                                   |


