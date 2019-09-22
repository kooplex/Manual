Reports
=========

Reports should be prepared in the `/home/report/_prepare/` directory. From the Hub -> Reports dropdown menu you can create a new report, from the folders of `/report/_prepare/`. 
The whole directory will be saved into the `/home/report/` directory as read-only. One report can have many versions and each snapshot will have a timstamp.


## How to publish a report?
In the menu click on the dropdown menu `Reports -> New report`.
* **The name of your report:**
* **
r this you should choose Static content served by a webserver. There is always a main html file (index file) but there can be additional files in the same folder, which are used within the main html file.

## Static or interactive

Reports can be either private or public.

* private: only registered users are allowed to open it
* public: it is visble to the public without logging in to Kooplex

There are three types of reports currently supported in Kooplex:

* Static or interactive self-contained [HTML](#HTML) page 
* Interactive pages hosted by either bokeh or the jupyter-kernelgateway
* REST services running in jupyter notebooks.


### HTML reports<a name="HTML"></a>
It is possible convert notebooks into HTML files that can be either static or interactive. The created HTML file then can be displayed on Kooplex. 
There are many python (or other) modules that will include javascript functions in the html files and enable many interactive tools such as

*    Holoviews
*   Pivottable Js

 The method of conversion depends on the type of the notebook.

#### How to create and HTML report?
From a jupyter notebook you can create html with the following command:

```
jupyter-nbconvert Example-interactive.ipynb  --to html --execute
```
It executes all the cells in the notebook and will generate an `Example-interactive.html` out of all input and output cells. It is possible with additional scripts to hide input cells, change the width etc.
[See the tricks page](https://github.com/jegesm/Presentation-tricks)

### Interactive reports<a name="interactive"></a>

*    Bokeh server

*    jupyter-kernelgateway

REST services running in jupyter notebooks.
A REST service is basically an application that listens at an url and serves the queries that are addressed towards it. For example you can trigger one of its function with additional ? and it will return with some data, that can be a number, a list or even an interactive plot (see bokeh embed).

The specification can be found here API and these short tutorials ndres.me and blog.ouseful.info worth to take a look at before building our first REST service.

Preview of interactive reports.
It is advisable to test your report before committing it.
For html files you can use jupyter-nbconvert in the terminal. If you then click on it in the file browser then you will see the result There are two scripts preview-bokeh.sh and preview-nb-api.sh for that purpose. Running these scripts in the report's folder will create a preview of it. The scripts will print out the url where your report can be visited.
Let say $USER is 'wgct0p' and the site is 'https://kooplex.com' then it will be like https://kooplex.com/notebook/wgct0p-projectname-wgct0p/report. 


### Jupyter notebook as a report
Possible

## Styling the reports

### Hiding cells
Use nbextension hide_cells

### Use a jupyter theme
```
from jupyterthemes.stylefx import set_nb_theme
set_nb_theme('monokai')
```

### Check the available themes
```
from jupyterthemes import get_themes
get_themes()
```

## API with jupyter-kernel-gateway

All APIs must have a */help* endpoint. When clicking on it on the report page the link will always point to the */help* endpoint so anyone can learn about its usage. It is advisable to describe all endpoints clearly.

### Data and other files
When creating a report put all auxiliary files into the same folder and never reference any files or folders outside of the reports folder. You can however reference data via abosulute URL-s

## Securing your report
In order to secure the content one can use a password. This way it is possible to show plots or any other results to non-registered people but keep the content still confidential.
