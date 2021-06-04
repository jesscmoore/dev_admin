# update_old_packages
# Credit: https://luispuerto.github.io/luisspuerto.net-testing/blog/2018/03/22/updating-homebrew-r-and-python-pip-packages-ruby-gems-macos/
# 
# This script updates old packages

cat("Outdated packages will now be updated: \n\n")
update.packages(ask = F, repos = 'cloud.r-project.org')
