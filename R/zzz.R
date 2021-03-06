## this is the equivalent of .First.lib (for packages with a namespace)
## note that it is general, so the name of the package etc doesn't need
## to be specified (just say whatever you want in the prints though).

.onAttach <-function(lib,pkg)
{
ver <- read.dcf(file.path(lib, pkg, "DESCRIPTION"), "Version")
     ver <- as.character(ver)
curdate <- read.dcf(file.path(lib, pkg, "DESCRIPTION"), "Date")
    curdate <- as.character(curdate)

# Welcome message (MAN):

packageStartupMessage(paste(
"\n",
"******************************************************************************\n",
"  CNLTreg: Complex-Valued Wavelet Lifting for Signal Denoising \n\n",
"            --- Written by Matt Nunes and Marina Knight ---\n",
"    --- Contributions from Jean Sanderson and Piotr Fryzlewicz ---\n",
"            Current package version: ",ver," (",curdate,") \n\n",
"\n",
"******************************************************************************\n","\n")
)

}

