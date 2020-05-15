## Plotly Dash server

Deploying a dash server needs a bit of care or extra work from the user. 

### Testing the notebook in the container
You need to add the correct `url_base_pathname` to the *Dash* class and the `port`, `host` to the *run_server* function.

```
import os

URL_PREFIX = os.path.join("/", os.getenv("NB_URL"), "report/")
REPORT_PORT = os.getenv("REPORT_PORT", 9000)
HOSTNAME = os.getenv("HOSTNAME")
SERVER_NAME = os.getenv("OUTERHOST")

print("You can access your report at %s/%s"%(SERVER_NAME, URL_PREFIX))

app = dash.Dash(__name__, external_stylesheets=[dbc.themes.SANDSTONE], url_base_pathname=URL_PREFIX)

app.run_server(debug=False, port=REPORT_PORT, host=HOSTNAME)
```