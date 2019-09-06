Reports
=========

## Static or interactive
Reports can be either private or public.

    private: only registered users are allowed to open it
    public: it is visble to the public without logging in to Kooplex

There are three types of reports currently supported in Kooplex:

    Static or self-contained interactive HTML pages
    Interactive pages hosted by either bokeh or the jupyter-kernelgateway
    REST services running in jupyter notebooks.

Reports should be prepared in the /report/_prepare/ directory. From the Hub -> Reports dropdown menu you can create a new report, from the folders of /report/_prepare/. The whole directory will be saved into the /report directory as read-only. One report can have many versions and each snapshot will have a timstamp.

In order to secure the content one can use a password. This way it possible to show plots or any other results to non-registered people but keep the content still confidential.

### Html reports
For this you should choose Static content served by a webserver. There is always a main html file (index file) but there can be additional files in the same folder, which are used within the main html file.
There are many python (or other) modules that will include javascript functions in the html files and enable many interactive tools such as

*    Holoviews
*   Pivottable Js

From a jupyter notebook you can create html with the following command:

```
jupyter-nbconvert Your.ipynb
```

### Interactive reports

*    Bokeh server
    (Not yet functional)

*    jupyter-kernelgateway
    (Not yet functional)

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
