# python config

## conda

use miniconda

according to [use-condarc](https://conda.io/projects/conda/en/latest/user-guide/configuration/use-condarc.html) it respects the `CONDARC` environment variable but defining it before or after running the setup will both fail so stick the `condarc` into `XDG_DATA_HOME` with is the `CONDA_PREFIX`.
