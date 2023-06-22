
# use a function without loading the package:
# package::function
usethis::use_git_config(
  user.name = "Sjoerd Huisman", # <-- change to your name
  user.email = "s.m.h.huisman@fsw.leidenuniv.nl", # <-- and your email
  init.defaultBranch = "main") # <-- not necessary but kinder than 'master'


usethis::use_git()

# Create a token ("login")
usethis::create_github_token(description = "Token for Repro Workshop 2023 Test 3")

# Activate scope write:packages <- do this

# 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 <- token for now (set to 7 days)

# activate the token
gitcreds::gitcreds_set() 

# check if it worked
usethis::gh_token_help()

# to actually connect to github
usethis::use_github()

# usethis::use_git_remote("origin", url = NULL, overwrite = TRUE)

# usethis::use_github(private = TRUE) make it into a private project instead
# Note: the name of the github project is automatically, and irreversibly (!)
# the name of your R project folder.
# So give it an informative name (and not "Project")

# Use Docker
repro::automate()

repro::use_gha_docker()

# for some reason it won't let me push





