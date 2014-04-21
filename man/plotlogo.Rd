\name{plotlogo}
\alias{plotlogo}
\title{Display a sequence logo as an R plot}
\usage{
plotlogo(file)
}
\arguments{
  \item{file}{path to the jpeg image of the sequence logo}
}
\description{
This function will display a sequence logo of an already
generated jpeg sequence logo.
}
\examples{
# Get path to an example jpeg sequence logo
fpath = system.file("extdata", "example_logo.jpeg", package="RWebLogo")
# Plot it!
plotlogo(fpath)
}

