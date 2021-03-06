% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/count_ngrams.R
\name{count_ngrams}
\alias{count_ngrams}
\title{An experimental function to efficiently generate a vocabulary in parallel
from output produced by the ngrams() function. Cores > 1 will only work for
users with GNU coreutils > 8.13 as the sort --parallel option is used. If you
have an older version use cores = 1.}
\usage{
count_ngrams(ngrams = NULL, input_directory = NULL, file_list = NULL,
  combine_ngrams = FALSE, cores = 2, mac_brew = FALSE)
}
\arguments{
\item{ngrams}{An optional list object output by the ngrams() function.}

\item{input_directory}{An optional input directory where blocked output from
th ngrams() function is stored as .Rdata files.}

\item{file_list}{An optional vector of file names to be used. Useful if you
only want to work on a subset of the input.}

\item{combine_ngrams}{Logical indicating whether simple ngrams should be
combined together when forming the vocabulary. If FALSE, then separate
vocabularies will be generated for each ngram length. Defaults to FALSE.}

\item{cores}{The number of cores to be used for parallelization.}

\item{mac_brew}{An option to use alternate versions of shell commands that
are compatible with GNU coretools as installed via "brew install coretools".
Simple adds a "g" infront of commands.}
}
\value{
Returns a list object with the vocabulary (sorted by frequency) and
and word counts.
}
\description{
An experimental function to efficiently generate a vocabulary in parallel
from output produced by the ngrams() function. Cores > 1 will only work for
users with GNU coreutils > 8.13 as the sort --parallel option is used. If you
have an older version use cores = 1.
}
