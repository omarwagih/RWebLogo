setwd('~/Development/')

remove.packages('RWebLogo', lib='/Library/Frameworks/R.framework/Versions/Current/Resources/library')

system('rm -rf RWebLogo/build/RWebLogo_1.0.0.tar.gz')
system('R CMD BUILD RWebLogo')

system('mv RWebLogo_1.0.0.tar.gz RWebLogo/build/RWebLogo_1.0.0.tar.gz')
system('R CMD INSTALL RWebLogo/build/RWebLogo_1.0.0.tar.gz')

#install.packages('gitter_1.0.tar.gz', repos = NULL, type="source")
detach("package:RWebLogo", unload=TRUE)
