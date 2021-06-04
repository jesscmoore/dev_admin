# list_old_packages
# Credit: https://luispuerto.github.io/luisspuerto.net-testing/blog/2018/03/22/updating-homebrew-r-and-python-pip-packages-ruby-gems-macos/
# 
# This script lists old packages

cat("List of outdated packages: \n\n")
old.packages(repos = 'cloud.r-project.org')
