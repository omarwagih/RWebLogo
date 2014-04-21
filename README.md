<img src="https://raw.githubusercontent.com/omarwagih/RWebLogo/master/build/logo.png" height="70px" />

## What is RWebLogo?
RWebLogo is a wrapper package for the [WebLogo python package](http://weblogo.threeplusone.com/manual.html) that allows generating of customised sequence logos in R. Sequence logos are graphical representations of the sequence conservation of nucleotides (in a strand of DNA/RNA) or amino acids (in protein sequences). Each logo consists of stacks of symbols, one stack for each position in the sequence. The overall height of the stack indicates the sequence conservation at that position, while the height of symbols within the stack indicates the relative frequency of each amino or nucleic acid at that position. In general, a sequence logo provides a richer and more precise description of, for example, a binding site, than would a consensus sequence.

## Getting started
To start using RWebLogo, ensure you have Python 2.6 or greater installed in your path. Then, install and load RWebLogo from CRAN:

    install.packages('RWebLogo')
    library('RWebLogo')

## Plotting a sequence logo 
Plotting a sequence logo is easy. Simply provide a character vector of the aligned sequences into the weblogo function
    
    # Example alignment
    aln <- c('CCAACCCAA', 'CCAACCCTA', 'AAAGCCTGA', 'TGAACCGGA')
    # Generate the logo in the file mylogo.pdf
    weblogo(seqs=aln, file.out='mylogo.pdf')

Lets add some text!

    weblogo(seqs=aln, file.out='mylogo.pdf', errorbars=FALSE, title='Yay, No error bars!', fineprint='RWebLogo 1.0', label='1a')
    
We can also change the format of the output:

    weblogo(seqs=aln, format='png', file.out='mylogo.png')

or change the axis labels:

    weblogo(seqs=aln, file.out='mylogo.pdf', xlabel='My x-axis', ylabel='Awesome bits')

Lets try plot a web logo to the R graphics device:

    weblogo(seqs=aln, plot=TRUE, open=FALSE, format='jpeg', resolution=600)
    
<hr/>
Alternatively, you could provide sequences from an external file using one of the formats supported by WebLogo. Here's an example using the a file with the Multiple Sequence Format (msf)
    
    # Get path to file
    fpath = system.file("extdata", "example_data.msf", package="RWebLogo")
    # Generate the logo 
    weblogo(file.in=fpath, file.out='mylogo_msf.pdf')

It's as simple as that! 

## Help
See `?weblogo` for more awesome options `?plotlogo` for more information on plotting jpeg sequence logos to the R graphics device. The manual for the original WebLogo python library can be found [here](http://weblogo.threeplusone.com/manual.html).

A full detailed [pdf manual](http://cran.r-project.org/web/packages/RWebLogo/RWebLogo.pdf) can be found on the [CRAN package page](http://cran.r-project.org/web/packages/RWebLogo/index.html)
    
If you're having trouble setting things up or have any questions feel free to drop me a line at [wagih@ebi.ac.uk](mailto:wagih@ebi.ac.uk)

  
