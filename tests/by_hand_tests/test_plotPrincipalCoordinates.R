# Tests of plotPrincipalCoordinates function

library(ftmsRanalysis)
data("exampleProcessedPeakData")

pcoaMat <- getPrincipalCoordinates(exampleProcessedPeakData)

# default plot
plotPrincipalCoordinates(pcoaMat)

# default plot colored by groups
plotPrincipalCoordinates(pcoaMat, ftmsObj=exampleProcessedPeakData)

# different coordinate axes
plotPrincipalCoordinates(pcoaMat, x=1, y=3)

# different coordinate axes colored by groups
plotPrincipalCoordinates(pcoaMat, x=3, y=4, ftmsObj=exampleProcessedPeakData)

# customize axes labels and title
plotPrincipalCoordinates(pcoaMat, xlabel="Custom x-axis label", ylabel="Custom y-axis label", title="My Title")

# custom axis label without R^2   
plotPrincipalCoordinates(pcoaMat, xlabel="Custom x-axis label", includeR2OnAxes = FALSE)


#should fail: x is too high
plotPrincipalCoordinates(pcoaMat, x=7, y=3, ftmsObj=exampleProcessedPeakData)

#should fail: y is not numeric
plotPrincipalCoordinates(pcoaMat, x=1, y="3", ftmsObj=exampleProcessedPeakData)

#should fail: ftmsObj is invalid
plotPrincipalCoordinates(pcoaMat, x=1, y=3, ftmsObj="hello")


