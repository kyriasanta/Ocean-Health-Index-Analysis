output/Ocean-Health-Index.html: code/OHI Analysis.Rmd data/ocean_health_index.csv
mkdir -p output
cd code && Rscript -e "rmarkdown::render('OHI Analysis.Rmd', output_file = '../output/Ocean-Health-Index.html')"

# Mac/Linux Docker target
report/Ocean-Health-Index.html:
	mkdir -p report
	docker run --rm -v "$(PWD)/report":/report kyriasanta/ocean-health-index

# Windows Docker target (git bash)
report-windows:
	mkdir -p report
	docker run --rm -v "/$(PWD)/report":/report kyriasanta/ocean-health-index

