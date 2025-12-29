## R script intended to be run when container starts

# render the document from R markdown
rmarkdown::render("/01_data/Gapminder_example.Rmd", output_dir = "/03_output")


