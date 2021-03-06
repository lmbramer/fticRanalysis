% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/assign_class.R
\name{assign_class}
\alias{assign_class}
\title{Assign compound class to each peak/mass}
\usage{
assign_class(ftmsObj, boundary_set = "bs1", calc_ratios = TRUE)
}
\arguments{
\item{ftmsObj}{an object of class 'peakData' or 'compoundData', typically a result of \code{\link{as.peakData}} or \code{\link{mapPeaksToCompounds}}.}

\item{boundary_set}{character vector specifying which boundary set to use when determining class. Valid options are currently "bs1", "bs2" and "bs3". Defaults to "bs1". See Details for more information on boundary sets.}

\item{calc_ratios}{logical argument, if elemental ratios needed for class assignment are not already calculated, should they be added to the data? Defaults to TRUE.}
}
\value{
an object of the same class as \code{ftmsObj} with a column added in \code{e_meta} giving the class information for each peak/compound, when possible
}
\description{
Assigns a compound class to each peak/mass, where possible, based Oxygen:Carbon ratio and Hydrogen:Carbon ratio and a chosen boundary set.
}
\details{
"bs1" and "bs2" are based on O:C and H:C ratio only, while "bs3" is based on other elemental ratios and counts. "bs1" is based on the boundaries given in Kim et al., 2003. "bs2" are relaxed boundary conditions given in Bailey et al., 2017 and "bs3" is given in Rivas-Ubach et al., 2018. See \code{\link{assign_class}} for comparisons of boundary sets with example data.
}
\references{
Kim, S., Kramer, R. W., & Hatcher, P. G. (2003). Graphical method for analysis of ultrahigh-resolution broadband mass spectra of natural organic matter, the van Krevelen diagram. Analytical Chemistry, 75(20), 5336-5344.
Bailey, V. L., Smith, A. P., Tfaily, M., Fansler, S. J., & Bond-Lamberty, B. (2017). Differences in soluble organic carbon chemistry in pore waters sampled from different pore size domains. Soil Biology and Biochemistry, 107, 133-143.
Rivas-Ubach, A., Liu, Y., Bianchi, T. S., Toliċ, N., Jansson, C., & Paša-Tolić, L. (2018). Moving beyond the van Krevelen diagram: A new stoichiometric approach for compound classification in organisms. Analytical chemistry. DOI: 10.1021/acs.analchem.8b00529
}
\author{
Lisa Bramer
}
