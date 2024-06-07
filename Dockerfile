# Example shiny app docker file
# https://blog.sellorm.com/2021/04/25/shiny-app-in-docker/

# get shiny server and R from the rocker project
FROM rocker/shiny:latest

# system libraries
# Try to only install system libraries you actually need
# Package Manager is a good resource to help discover system deps
RUN apt-get update && apt-get install -y \
    libcurl4-gnutls-dev \
    libssl-dev
  

# install R packages required 
# Change the packages list to suit your needs
RUN R -e 'install.packages(c("shiny", "shinydashboard", "ggplot2"))'


# copy the app directory into the image
COPY app.R /srv/shiny-server/app.R

EXPOSE 3838

# run app
CMD Rscript /srv/shiny-server/app.R

