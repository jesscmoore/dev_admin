# before_upgrading_r.R
# Credit:  https://www.r-bloggers.com/2017/05/upgrade-r-without-losing-your-packages/
# Before you brew upgrade r, build a temp file with all of your old packages by running this script
# 
# Output: This will save a list of installed packages as a character vector at 
# ~/installed_old.rda

tmp <- installed.packages()
installedpkgs <- as.vector(tmp[is.na(tmp[,"Priority"]), 1])
save(installedpkgs, file="~/installed_old.rda")