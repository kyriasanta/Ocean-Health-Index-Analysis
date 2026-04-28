FROM rocker/r-ver:4.3.1

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

RUN Rscript -e "install.packages(c('rmarkdown', 'tidyverse', 'knitr', 'ggplot2', 'kableExtra'), repos='https://cloud.r-project.org')"

COPY . /project
WORKDIR /project

CMD ["Rscript", "-e", "rmarkdown::render('code/OHI Analysis.Rmd', output_file = '/report/Ocean-Health-Index.html')"]