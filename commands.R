library(knitr)    # For knitting document and include_graphics function
library(glue)
library(workflowr)
wflow_git_pull(username = "L-ENA",
               password = "lukas1997-LNQGQGC4")

wflow_use_github("L-ENA")
#To build the website, run the function wflow_build() in the R console:

#To view the site without first building any files, run wflow_view(), which by default displays the file docs/index.html:
#wflow_view()
#wflow_status()
#add new pages as Rmd, and then add it to site.yml in the analysis direc
#wflow_open("analysis/Latest Updates.Rmd")
#wflow_git_push(dry_run = TRUE)


wflow_build()

mytime=Sys.time()
commit_msg=glue("Added PRISMA, Updated at {mytime}")

wflow_publish(c("analysis/*", "*"),
              commit_msg)



wflow_git_push(username = "L-ENA",
               password = "lukas1997-LNQGQGC4")


