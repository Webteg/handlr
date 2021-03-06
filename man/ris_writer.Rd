% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ris_writer.R
\name{ris_writer}
\alias{ris_writer}
\title{ris writer}
\usage{
ris_writer(z)
}
\arguments{
\item{z}{an object of class \code{handl}; see \link{handl} for more}
}
\value{
text if one RIS citation or list of many
}
\description{
ris writer
}
\examples{
# from a RIS file
z <- system.file('extdata/crossref.ris', package = "handlr")
tmp <- ris_reader(z)
cat(ris_writer(z = tmp))

# peerj
z <- system.file('extdata/peerj.ris', package = "handlr")
tmp <- ris_reader(z)
cat(ris_writer(z = tmp))

# plos
z <- system.file('extdata/plos.ris', package = "handlr")
tmp <- ris_reader(z)
cat(ris_writer(z = tmp))

# elsevier
z <- system.file('extdata/elsevier.ris', package = "handlr")
tmp <- ris_reader(z)
cat(ris_writer(z = tmp))

z <- system.file('extdata/citeproc.json', package = "handlr")
res <- citeproc_reader(z)
cat(ris_writer(z = res))

# many
## combine many RIS in a handl object
z <- system.file('extdata/crossref.ris', package = "handlr")
cr <- ris_reader(z)
z <- system.file('extdata/peerj.ris', package = "handlr")
prj <- ris_reader(z)
c(cr, prj)

# many bibtex to ris via c method
a <- system.file('extdata/bibtex.bib', package = "handlr")
b <- system.file('extdata/crossref.bib', package = "handlr")
aa <- bibtex_reader(a)
bb <- bibtex_reader(a)
(res <- c(aa, bb))
cat(ris_writer(res), sep = "\n\n")

## manhy Citeproc to RIS
z <- system.file('extdata/citeproc-many.json', package = "handlr")
w <- citeproc_reader(x = z)
ris_writer(w)
cat(ris_writer(w), sep = "\n")
}
\references{
RIS tags https://en.wikipedia.org/wiki/RIS_(file_format)
}
\seealso{
Other writers: 
\code{\link{bibtex_writer}()},
\code{\link{citeproc_writer}()},
\code{\link{codemeta_writer}()},
\code{\link{rdf_xml_writer}()},
\code{\link{schema_org_writer}()}

Other ris: 
\code{\link{ris_reader}()}
}
\concept{ris}
\concept{writers}
