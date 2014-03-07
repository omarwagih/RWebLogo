\name{weblogo}
\alias{weblogo}
\title{Plot a sequence logo}
\usage{
weblogo(seqs, file.in, open = TRUE, verbose = TRUE, plot = F,
  return.cmd = F, datatype = "plain", file.out, format = "pdf",
  sequence.type = "protein", alphabet, units = "bits",
  composition = "auto", weight, first.index, lower, upper,
  ignore.lower.case = TRUE, reverse, complement, size = "large",
  stacks.per.line = 40, title, label, show.xaxis = TRUE, xlabel, annotate,
  yaxis, show.yaxis = TRUE, ylabel, show.ends = FALSE, fineprint = "",
  ticmarks = 1, errorbars = FALSE, reverse.stacks = TRUE,
  color.scheme = "auto", stack.width = 10.8, aspect.ratio = 5,
  box = FALSE, resolution = 300, scale.width = TRUE)
}
\arguments{
  \item{seqs}{Aligned sequences as an R character vector.
  Sequences must all have the same length. Alternatively,
  you can provide a file containing your sequence alignment
  using \code{file.in}.}

  \item{file.in}{A file containing your sequence alignment
  in one of the following formats: clustal, fasta, plain,
  msf, genbank, nbrf, nexus, phylip, stockholm,
  intelligenetics, table, array, transfac. This file is
  only to be provided if you are not inputting data with
  'seqs'. To set your data format, see the \code{datatype}
  option.}

  \item{open}{Open the generated logo file? (default:
  TRUE).}

  \item{verbose}{Write status messages to the R console?
  (default: TRUE).}

  \item{plot}{Plot the resulting logo as an R plot? Note:
  in order for this to work, the format option must be set
  to \code{jpeg} (default: FALSE).}

  \item{return.cmd}{Logical indicating if RWebLogo should
  return the WebLogo command generated (default: FALSE).}

  \item{datatype}{Type of multiple sequence alignment or
  position weight matrix file: ('clustal', 'fasta','plain',
  'msf', 'genbank', 'nbrf', 'nexus', 'phylip', 'stockholm',
  'intelligenetics', 'table', 'array', 'transfac'). You
  usually don't need to specify this, as weblogo will try
  figure out the format of your file.}

  \item{file.out}{Output file. For example,
  /path/to/dir/mylogo.pdf. By default this is your working
  directory + RWebLogo. + selected \code{format}.}

  \item{format}{Format of output: 'pdf' (default) 'eps',
  'png', 'jpeg', 'svg'.}

  \item{sequence.type}{The type of sequence data:
  'protein', 'rna' or 'dna'.}

  \item{alphabet}{The set of symbols to count, e.g. 'AGTC'.
  All characters not in the alphabet are ignored. If
  neither the alphabet nor sequence-type are specified then
  weblogo will examine the input data and make an educated
  guess.}

  \item{units}{A unit of entropy ('bits' (default), 'nats',
  'digits'), or a unit of free energy ('kT', 'kJ/mol',
  'kcal/mol'), or 'probability' for probabilities.}

  \item{composition}{The expected composition of the
  sequences: 'auto' (default), 'equiprobable', 'none' (do
  not perform any compositional adjustment), a CG
  percentage, a species name ('H. sapiens', 'E. coli', 'S.
  cerevisiae', 'C. elegans', 'D. melanogaster', 'M.
  musculus', 'T. thermophilus'), or an explicit
  distribution as a named numerical vector (e.g. c(A=10,
  C=40, G=40, T=10)). The automatic option uses a typical
  distribution for proteins and equiprobable distribution
  for everything else.}

  \item{weight}{The weight of prior data. Default depends
  on alphabet length.}

  \item{first.index}{Index of first position in sequence
  data (default: 1).}

  \item{lower}{Lower bound index of sequence to display.}

  \item{upper}{Upper bound index of sequence to display.}

  \item{ignore.lower.case}{Disregard lower case letters and
  only count upper case letters in sequences.}

  \item{reverse}{reverse sequences.}

  \item{complement}{complement DNA sequences.}

  \item{size}{Specify a standard logo size: 'small',
  'medium', 'large' (default).}

  \item{stacks.per.line}{Maximum number of logo stacks per
  logo line (default: 40).}

  \item{title}{Logo title text.}

  \item{label}{A figure label, e.g. '2a'.}

  \item{show.xaxis}{Display sequence numbers along x-axis?
  (default: TRUE).}

  \item{xlabel}{X-axis label.}

  \item{annotate}{A comma separated list or vector of
  custom stack annotations, e.g. '1,3,4,5,6,7' or
  c(1,3,4,5,6,7).  Annotation list must be same length as
  sequences.}

  \item{yaxis}{Height of yaxis in units (default: maximum
  value with uninformative prior).}

  \item{show.yaxis}{Display entropy scale along y-axis?
  (default: TRUE).}

  \item{ylabel}{Y-axis label (default: depends on plot type
  and units).}

  \item{show.ends}{Label the ends of the sequence?
  (default: FALSE).}

  \item{fineprint}{The fine print text at the bottom right
  corner (default: blank).}

  \item{ticmarks}{Distance between ticmarks (default:
  1.0).}

  \item{errorbars}{Display error bars? (default: FALSE).}

  \item{reverse.stacks}{Draw stacks with largest letters on
  top? (default: TRUE).}

  \item{color.scheme}{Specify a standard color scheme
  ('auto', 'base pairing', 'charge', 'chemistry',
  'classic', 'hydrophobicity', 'monochrome').}

  \item{stack.width}{Width of a logo stack (default:
  10.8).}

  \item{aspect.ratio}{Ratio of stack height to width
  (default: 5).}

  \item{box}{Draw boxes around symbols? (default: FALSE).}

  \item{resolution}{Bitmap resolution in dots per inch
  (DPI). Low resolution bitmaps with DPI<300 are
  antialiased (default: 300 DPI).}

  \item{scale.width}{Scale the visible stack width by the
  fraction of symbols in the column?  i.e. columns with
  many gaps of unknowns are narrow (default: TRUE).}
}
\description{
This function will plot a sequence logo given aligned
sequences. For more details on the parameters, see the
WebLogo user manual at
\url{http://weblogo.threeplusone.com/manual.html}
}
\examples{
# Make a sequence logo using an external alignment file format
# In this example we'll use the EMBOSS alignment format or msf
# However, you can use any format supported by WebLogo e.g. fasta
fpath = system.file("extdata", "example_data.msf", package="RWebLogo")
weblogo(file.in=fpath)
# Now for an example using an alignment as an R character vector
aln <- c('CCAACCCAA', 'CCAACCCTA', 'AAAGCCTGA', 'TGAACCGGA')
# Simple WebLogo
weblogo(seqs=aln)
# Lets get rid of those ugly error bars and add some text!
weblogo(seqs=aln, errorbars=FALSE, title='Yay, No error bars!',
        fineprint='RWebLogo 1.0', label='1a')
# We can also change the format of the output like this
weblogo(seqs=aln, format='png')
# You can change the axis labels like this
weblogo(seqs=aln, xlabel='My x-axis', ylabel='Awesome bits')
# Lets try plot a web logo to the R graphics device
weblogo(seqs=aln, plot=TRUE, open=FALSE, format='jpeg', resolution=600)
# You get the idea! See ?weblogo for more awesome options!
# See ?plotlogo for more information on plotting jpeg sequence logos to the R graphics device!
}

