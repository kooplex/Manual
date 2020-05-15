

### Dashboard Server 
This type of report tool consist of a dashboard (e.g. bokeh server) and a REST API (e.g. jupyter-kernel-gateway). The purpose of the dashboard server is to give the users a public tool to create narratives with state preserving, interactive figures. It is similar to the [narratives](https://nextstrain.org/docs/narratives/introduction) supported by the nextstrain platform.

The dashboard is used for customizing the figures with the available control items, such as sliders, checkboxes, filters etc. The current state of the figure is coded into an url. Later with this url one can retrieve the figure in exact same state via API, but without the control elements.


