% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/processIlluminaSamplesheets_Functions.R
\docType{methods}
\name{validateBCLSheet}
\alias{validateBCLSheet}
\title{Illumina samplesheet cleaning and updating for
bcl2Fastq versions >= 2.1.7}
\usage{
validateBCLSheet(sampleSheet, param = bcl2fastqparams)
}
\arguments{
\item{sampleSheet}{File location of samplesheet for Illumina basecalling (see vignette for more details)}

\item{param}{A BCL2FastQparams object}
}
\value{
cleanedSampleSheet A data.frame containing cleaned samplesheet.
}
\description{
Parses an Illumina sample sheet  to create
standardised/updated samplesheet for bcl2Fastq >= Version 2.1.7
}
\examples{

fileLocations <- system.file("extdata",package="basecallQC")
runXML <- dir(fileLocations,pattern="runParameters.xml",full.names=TRUE)
config <- dir(fileLocations,pattern="config.ini",full.names=TRUE)
sampleSheet <- dir(fileLocations,pattern="*\\\\.csv",full.names=TRUE)
bcl2fastqparams <- setBCL2FastQparams(runXML,config,runDir=getwd(),verbose=FALSE)
cleanedSampleSheet <- validateBCLSheet(sampleSheet,param=bcl2fastqparams)

}
\author{
Thomas Carroll and Marian Dore
}
