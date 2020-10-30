library(knitr)    # For knitting document and include_graphics function


#To build the website, run the function wflow_build() in the R console:
wflow_build()
#To view the site without first building any files, run wflow_view(), which by default displays the file docs/index.html:
wflow_view()
wflow_status()
#add new pages as Rmd, and then add it to site.yml in the analysis direc
wflow_open("analysis/Latest Updates.Rmd")


wflow_build()
wflow_publish(c("analysis/*", "*"),
              "added interactive plots")
