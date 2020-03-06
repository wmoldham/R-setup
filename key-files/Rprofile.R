# load development packages with session
if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(usethis))
  suppressMessages(require(testthat))
}

# warn on partial matches
options(
  warnPartialMatchAttr = TRUE,
  warnPartialMatchDollar = TRUE,
  warnPartialMatchArgs = TRUE
)

# enable autocompletions for package names in `require()` and `library()`
utils::rc.settings(ipck = TRUE)

# warnings are errors
# options(warn = 2)

# fancy quotes are annoying and lead to 'copy + paste' bugs / frustrations
options(useFancyQuotes = FALSE)

# limit output
options(max.print = 100)

# devtools setup
options(
  usethis.full_name = "William Oldham",
  usethis.protocol = "ssh", 
  usethis.description = list(
    `Authors@R` = 'person(
    given = "William",
    family = "Oldham",
    email = "wm.oldham@gmail.com",
    role = c("aut", "cre"),
    comment = c(ORCID = "0000-0003-3029-4866"))',
    License = "MIT + file LICENSE",
    Version = "0.0.0.9000"
  )
)

# use renv from global .Rprofile
if (file.exists("renv/activate.R")) source("renv/activate.R")
