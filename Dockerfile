FROM rocker/verse:4.3.1

RUN Rscript -e "install.packages('kableExtra', repos='https://cloud.r-project.org')"

COPY . /project
WORKDIR /project

CMD ["Rscript", "-e", "rmarkdown::render('code/OHI Analysis.Rmd', output_file = '/report/Ocean-Health-Index.html')"]
