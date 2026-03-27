output/Ocean-Health-Index.html: code/OHI Analysis.Rmd data/ocean_health_index.csv
mkdir -p output
cd code && Rscript -e "rmarkdown::render('OHI Analysis.Rmd', output_file = '../output/Ocean-Health-Index.html')"
