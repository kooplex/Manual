---
title: Reports
description: publish your results
published: true
date: 2023-02-21T12:30:38.392Z
tags: public
editor: markdown
dateCreated: 2022-05-12T15:42:31.197Z
---

Quickstart for creating a plotly report:
![](/static/report_newplotly-example.png)

## Report types
### Static or interactive html
Anything that is converted into html can be served as a *static* html.

### R shiny dashboards
The server will look for an **app.R** or **ui.R**.

Here are some [shiny examples](https://rstudio.github.io/shinydashboard/examples.html) and a [tutorial](https://shiny.rstudio.com/tutorial/).
Example shiny dashboard: ![](/static/shiny-example.png)
### Plotly dash
Here is an [example code](/static/plotly-dash-app-example.py)

The important steps are to use the proper environmental variables when creating the *Dash* instance and the *server* object
```
REPORT_URL = os.getenv("REPORT_URL")
app = Dash(__name__, url_base_pathname="/"+REPORT_URL)

REPORT_PORT = os.getenv("REPORT_PORT")
HOSTNAME = os.getenv("HOSTNAME")
app.run_server(debug=False, port=REPORT_PORT, host=HOSTNAME)
```

Example plotly plots and dashboards: ![](/static/plotly-example.png)

### Bokeh server
The image runs automatically the following command:
```
/opt/conda/bin/bokeh serve  $REPORT_FOLDER --prefix ${REPORT_URL} --allow-websocket-origin k8plex-test.vo.elte.hu --port $REPORT_PORT 
```
It will look for a **main.py** or **main.ipynb** file


### Applications and REST services