### HTML reports
It is possible convert notebooks into HTML files that can be either static or interactive. The created HTML file then can be displayed in Kooplex. 
There are many python (or other) modules that will include javascript functions in the html files and enable many interactive tools such as

* [Ipywidgets](https://ipywidgets.readthedocs.io/en/latest/)
* [bqplot](https://github.com/bloomberg/bqplot)
* [Holoviews](pyviz.org)
* [Pivottable Js](https://pivottable.js.org/examples/)

#### How to create and HTML report?
 The method of conversion depends on the type of the notebook.

**For Jupyter**
```
jupyter-nbconvert Example-interactive.ipynb  --to html --execute
```
It executes all the cells in the notebook and will generate an `Example-interactive.html` out of all input and output cells. It is possible with additional scripts to hide input cells, change the width etc.
[See the tricks page](https://github.com/jegesm/Presentation-tricks)

**For RMarkdown**
It is currently not supported, but when there is need for it we will start to implement it

r this you should choose Static content served by a webserver. There is always a main html file (index file) but there can be additional files in the same folder, which are used within the main html file.

#### Preview of HTML reports.
After you converted the notebook with jupyter-nbconvert in the terminal you can click on it in the file browser and check the result.
