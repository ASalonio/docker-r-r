# building docker image to use R-Studio in a browser

FROM augusto93921/docker-r-studio

# optional:
MAINTAINER 'Augusto Salonio' augusto93921@gmail.com

## create directories
RUN mkdir -p /01_data
RUN mkdir -p /02_code
RUN mkdir -p /03_output

## add specific files from repo into the image
COPY /01_data/Gapminder_example.Rmd /01_data/Gapminder_example.Rmd

## copy working script
COPY /02_code/script2run.R /02_code/script2run.R

## run the script on running container only
#CMD bash #use this command to check if the files are copied
CMD Rscript /02_code/script2run.R

## command to run this container
#docker run -it --rm -v C:/UDEMY/R_Studio_Shared:/03_output augusto93921/docker-r-r