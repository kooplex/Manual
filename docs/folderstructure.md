--> <img src="/static/rstudio.png" width="35px">studio users go <a href="#rstudio"> here</a> for a more detailed explanation

# Root folder is `/v`. 
Everything is mounted into this read-only folder. 
We have the following folders in `/v/`:

## Private folders
  - `<username>/` - a users own, private folder (home)
  - `scratch/` - temporary storage] (e.g. for large calculations)
  - `cloud/` - selected folders from [Seafile](/services/seafile) (if any folder is mounted to the environment)
  - `vc/` - [version controlled repositories](/services/gitea) (if any repository is added to the environment)
  
## Project related folders
Any number of [projects](projects.md) can be set for each *environment*, and also a project an be associated with any number of *environments*. For each project a folder will appear in the `projects/` folder and in the `report_prepare/` folder.

  - `projects/` - multiple [projects](/projects) can be mounted to an environment. Share data with collaborators
  - `report_prepare/` - a folder for each project to place all files and data for a report. See [reports](/reports)
  
## Storage folders
Coming soon...
See [details](/folderstructure)
Each volume will appear in the `volumes/` folder.

  - `volumes/` - [read-only datasets](#volume) and [storage](#attachment) for publicly shared data, programs, config files etc
  - `attachments/` - [storage](#attachment) for publicly shared data, programs, config files etc
  - `garbage/` - automatically archived content (e.g. when a project is deleted)

## Course folders
Any number of [courses](education/education.md) can be set for each *environment*, and also a course an be associated with any number of *environments*. For each course the relevant folders will appear in the `courses/` folder (See [Folders and Storage](/folderstructure)!).

- `courses/` - several folders for each course
	- `<course_name>.assignment_prepare/` - Put the content of a future assignment into a separate folder. It will be selectable from the *Education menu* -> *Assignment management* -> *New assignment* tab (for Teacher's only, [See how to add new assignment](education/education.md))
  
 	- `<course_name>.assignments/` - All students' assignment (working) folder is placed here. From these folders will be the content trensferred to the teachers' correct folder after submission. 

  - `<course_name>.correct/` - Submitted assigments appear here for corrections (for Teacher's only)
  - `<course_name>.public/` - All members of the course can see and edit the contents here
 
 ![course-folders](/static/edu-folders.gif)


## Service folders
### Seafile (cloud base file sharing) <img src="/static/seafile-transparent-1024.png" width=40 alt="seafile">
You can add folders from the Seafile cloud based file storing and sharing platform. 
Read more about [file synchronization](Seafile)

### Repository from the Gitea (version controlled content)  <img src="/static/gitea.svg" width=40 alt="seafile">
Repositories can be added from Gitea/Github etc. Read more about [repository adding](/versioncontrol)



## Access folders in Rstudio<div id="rstudio"></div>
To access all folders you need to go to `/v`: 
![rstudio-folder.gif](/static/rstudio-folder-v.gif)




