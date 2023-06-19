install.packages("reticulate")
library(reticulate)

# create a new environment
version <- "3.11.4"
install_python(version = version)
virtualenv_create("my-python", python_version = version)
use_virtualenv("my-python", required = TRUE)
virtualenv_install(envname = "my-python", "matplotlib", ignore_installed = FALSE, pip_options  = character() )
virtualenv_install (envname = "my-python", "numpy",ignore_installed = FALSE, pip_options = character() )
virtualenv_install (envname = "my-python"
                    "pandas”, ignore_installed = FALSE, pip_options  = character() )
