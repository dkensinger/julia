## My first attempt at using Julia

## Load Packages we want to use

using Gadfly, RDatasets, GLM

## Now Load some data in

neuro = dataset("boot", "neuro")


##Summarize data

describe(neuro)

## Run a Linear regression on V3 is dependent and V4 is independent

Regression = lm(V2 ~ V3, neuro)


#Great Give Gadfly a try. Get a PNG version of a histogram of V4

NeuroPlot = plot(dataset("boot", "neuro"), x="V4", Geom.histogram, Guide.title("Neuro V4 Distribution"))

## Print a PNG version of the plot

draw(PNG("neuroplot.png", 4inch, 3inch), NeuroPlot)

##Lets get a scatter plot going as well with the diamonds dataset

DiamondPlot=plot(dataset("ggplot2","diamonds"),x="Carat",y="Price",color="Cut",Geom.point)

## Print to PNG

draw(PNG("diamondplot.png", 4inch, 3inch), DiamondPlot)
