# after_upgrading_r_install_missing_packages.R
# Credit:  https://www.r-bloggers.com/2017/05/upgrade-r-without-losing-your-packages/
# After brew upgrade r, use a saved temp file with all to install missing packages after the upgrade
# 
# Input: This will use a list of installed packages that were saved as a character vector at 
# ~/installed_old.rda
# prior to the upgrade, using the script:
# before_upgrading_r_save_package_list.R


# Once you’ve got the new version up and running, 
# reload the saved packages (still in R history file, and re-install all missing packages 
# from CRAN.
tmp <- installed.packages()
installedpkgs.new <- as.vector(tmp[is.na(tmp[,"Priority"]), 1])
missing <- setdiff(installedpkgs, installedpkgs.new)

cat("The install of missing packages will take some time...\n")
cat("Make a cuppa....\n")

install.packages(missing)
update.packages()

