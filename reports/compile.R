# Remove all plots
file.remove(list.files("reports/assets/figure/", full.names = TRUE))

# Generate HTML, markdown and Word versions of the document
rmarkdown::render(
  input = "reports/report.Rmd",
  output_format = c("html_document", "word_document"),
  envir = new.env(),
  encoding = 'UTF-8')

rmarkdown::render(
  input = "reports/report.Rmd",
  output_format = "md_document",
  envir = new.env(),
  encoding = 'UTF-8')
