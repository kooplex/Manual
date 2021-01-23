### Jupyter notebook as a report
If for any reason you need to have a proper kernel running in the background and want visitors to alter the input cells of your notebook, then you can publish your notebook as it is. This method is similar to that of [nbviewer](https://github.com/jupyter/nbviewer)

#### Styling the reports

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

