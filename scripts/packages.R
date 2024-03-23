# Required packages ----


packages <- c(
  "dplyr", "DT", "lubridate", "shinyjs", "data.table", "ggplot2",
  "foreign", "date"
)


# # Install packages if not already installed
suppressPackageStartupMessages(
  invisible(
    newPkgs <- packages[!(packages %in%
                            installed.packages()[,"Package"])]))

suppressPackageStartupMessages(
  invisible(
    if(
      length(newPkgs) > 0
    ){ install.packages(
      newPkgs
    )
    }
  )
)


# # Loads packages silently
suppressPackageStartupMessages(
  invisible(
    lapply(packages, library, character.only = TRUE)
  )
)