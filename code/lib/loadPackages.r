# Set library path
.libPaths("./lib")

packages <- c("tidyverse")

install <- function(package_name) {
    # if package is not installed
    if (!require(package_name, character.only = TRUE)) {
        install.packages(package_name, dependencies = TRUE)
    }

    # load package
    library(package_name, character.only = TRUE)
}

# load all packages in packages list
sapply(packages, install)
