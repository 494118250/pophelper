% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pophelper.R
\name{plotQMultiline}
\alias{plotQMultiline}
\title{Plot a qlist as individual-level multiline barplot}
\usage{
plotQMultiline(qlist = NULL, spl = NA, lpp = NA, clustercol = NA,
  sortind = NA, grplab = NA, selgrp = NA, ordergrp = FALSE,
  subsetgrp = NA, grpmean = FALSE, showindlab = TRUE, useindlab = FALSE,
  indlabwithgrplab = FALSE, indlabsep = " ", indlabsize = 5,
  indlabangle = 90, indlabvjust = 0.5, indlabhjust = 1,
  indlabcol = "grey30", indlabspacer = 1.5, showgrplab = TRUE,
  grplabsize = 7, grplabcol = "grey30", grplabbgcol = "#DCDCDC",
  showtitle = FALSE, titlelab = NA, titlehjust = 0, titlevjust = 0.5,
  titlesize = 9, titlecol = "grey30", titleface = "plain",
  titlespacer = 3, titleangle = 0, showsubtitle = FALSE,
  subtitlelab = NA, subtitlehjust = 0, subtitlevjust = 0.5,
  subtitlesize = 7, subtitlecol = "grey30", subtitleface = "plain",
  subtitlespacer = 4, subtitleangle = 0, showlegend = FALSE,
  legendlab = NA, legendpos = "right", legendkeysize = 6,
  legendtextsize = 8, legendmargin = c(1, 1, 1, 0), barsize = 0.9,
  barbordersize = 0, barbordercolour = NA, showticks = FALSE,
  showyaxis = FALSE, ticksize = 0.1, ticklength = 0.03,
  outputfilename = NA, imgtype = "png", height = NA, width = NA,
  dpi = 300, units = "cm", mar = c(0.1, 0.5, 0.1, 0.5),
  theme = "theme_grey", basesize = 5, font = "", na.rm = FALSE,
  quiet = FALSE, exportplot = TRUE, returnplot = FALSE,
  returndata = FALSE)
}
\arguments{
\item{qlist}{A qlist (list of dataframes). An output from \code{\link{readQ}}.}

\item{spl}{An integer indicating samples per line. Defaults to 60.}

\item{lpp}{An integer indicating lines per page. Defaults to 11.}

\item{clustercol}{A character vector of colours for clusters.}

\item{sortind}{A character indicating how individuals are sorted. Default is NA (Same order of individuals as in input file). Other options are 'all' (sorting by values of all clusters), by any one cluster (eg. 'Cluster1') or 'labels' (sorting by individual labels). See details.}

\item{grplab}{A dataframe with one or more columns (group label sets), and rows equal to the number of individuals. See details.}

\item{selgrp}{A single character denoting a selected group label set. The selected label must be a group label title used in \code{grplab}. See details.}

\item{ordergrp}{A logical indicating if individuals must be grouped into contiguous blocks based on \code{grplab} starting with \code{selgrp}.}

\item{subsetgrp}{A character or character vector with group names to subset or reorder groups. Only applicable when \code{grplab} is in use. Default is NA. See details.}

\item{grpmean}{A logical indicating if q-matrix must be converted from individual values to group mean values. Applicable only when \code{grplab} is in use and mean is calculated over \code{selgrp}.}

\item{showindlab}{A logical indicating if individual labels must be shown below the bars. To hide labels, set \code{showindlab=FALSE}. See details.}

\item{useindlab}{A logical indicating if individual labels must be read from the rownames of qlist dataframes and used as labels. See details.}

\item{indlabsep}{A character used as separator when concatenating individual labels and group labels. Defaults to space \code{indlabsep=" "}.}

\item{indlabsize}{A numeric denoting size of the individual labels. Defaults to 5.}

\item{indlabangle}{A numeric denoting the angle of the individual labels. Defaults to 90.}

\item{indlabvjust}{A numeric denoting vertical justification of the individual labels. Defaults to 0.5.}

\item{indlabhjust}{A numeric denoting the horizontal justification of the individual labels. Defaults to 1.}

\item{indlabcol}{A colour for individual labels. Defaults to 'grey30'.}

\item{indlabspacer}{A numeric denoting space between the individual label and the plot area. Default set to 0.}

\item{showgrplab}{A logical indicating if group labels \code{grplab} must be displayed on the plot.}

\item{grplabsize}{A numeric denoting size of the group labels. Defaults to 7.}

\item{grplabcol}{A colour for group labels. Defaults to 'grey30'.}

\item{grplabbgcol}{A colour for group label background. Defaults to 'white'.}

\item{titlelab}{A character or character vector for title text. Defaults to NA, and when \code{showtitle=TRUE} displays file name.}

\item{titlehjust}{A numeric denoting the horizontal justification of the title. Defaults to 0 (left).}

\item{titlevjust}{A numeric denoting the vertical justification of the title. Defaults to 0.5 (center).}

\item{titlesize}{A numeric indicating the size of the title text. Defaults to 5 points.}

\item{titlecol}{A colour character for title. Defaults to "grey30".}

\item{titleface}{A character indicating the font face of title label. One of 'plain', 'italic', 'bold' or 'bold.italic'. Defaults to 'plain'. Applicable only when \code{showtitle=T}.}

\item{titlespacer}{A numeric indicating the space below the title. Defaults to 1.2.}

\item{titleangle}{A numeric indicating the angle/rotation of the title. Defaults to 0.}

\item{showsubtitle}{A logical indicating if plot subtitle must be shown on the top. Defaults to FALSE. If TRUE and \code{subtitlelab=NA}, file name is displayed by default.}

\item{subtitlelab}{A character or character vector for subtitle text. Defaults to NA, and when \code{showsubtitle=TRUE} displays K value like K=2.}

\item{subtitlehjust}{A numeric denoting the horizontal justification of the subtitle. Defaults to 0 (left).}

\item{subtitlevjust}{A numeric denoting the vertical justification of the subtitle. Defaults to 0.5 (center).}

\item{subtitlesize}{A numeric indicating the size of the subtitle text. Defaults to 5 points.}

\item{subtitlecol}{A colour character for subtitle. Defaults to "grey30".}

\item{subtitleface}{A character indicating the font face of subtitle label. One of 'plain', 'italic', 'bold' or 'bold.italic'. Defaults to 'plain'. Applicable only when \code{showsubtitle=T}.}

\item{subtitlespacer}{A numeric indicating the space below the subtitle. Defaults to 1.2.}

\item{subtitleangle}{A numeric indicating the angle/rotation of the subtitle. Defaults to 0.}

\item{barsize}{A numeric indicating the width of the bars. Defaults to 0.9.}

\item{barbordersize}{A numeric indicating border size of bars. Defaults to 0. Visible only when \code{barbordercolour} is not NA.}

\item{barbordercolour}{A single colour for bar border. Defaults to NA. Visible only when \code{barbordersize} is larger than zero and set to a colour other than NA.}

\item{showticks}{A logical indicating if ticks on axis should be displayed or not. Defaults to FALSE.}

\item{showyaxis}{A logical indicating if y-axis labels should be displayed or not. Defaults to FALSE.}

\item{outputfilename}{A character or character vector denoting output file name without file extension. See details.}

\item{imgtype}{A character denoting figure output format. Options are 'png', 'jpeg', 'tiff' or 'pdf'.}

\item{height}{A numeric denoting height of the full figure. If NA, height is set to 29.7cm (A4 height).}

\item{width}{A numeric denoting width of the full figure. If NA, width is set to 21cm (A4 width).}

\item{dpi}{A numeric denoting resolution of the figure. Default is 300. If \code{imgtype="pdf"}, dpi is fixed at 300 and does not have any effect..}

\item{units}{A character denoting the units of dimension of the figure. Default is "cm". Other options are 'px', 'in' or 'mm'.}

\item{mar}{A four number vector denoting distance of top, right, bottom and left margins in \code{units}.}

\item{theme}{A character indicating ggplot theme to be used. Use like "theme_grey", "theme_bw" etc.}

\item{font}{A character indicating font family to be used in the plots. Uses default system fonts by default for jpeg, png and tiff. Uses 'Helvetica' as default for pdf. Use package \code{extrafonts} to import custom fonts. See vignette for examples.}

\item{na.rm}{Default set to FALSE. NAs are not removed from data, therefore \code{ggplot} prints warning messages for NAs. If set to TRUE, NAs are removed before plotting and \code{ggplot} NA warning is suppressed.}
}
\description{
Plot a qlist as individual-level barplot with multiple lines.
}
\details{
Figures are always created to A4 size. Any plotted row will span the width of the figure. 
Note that this function is slow and may take several minutes when plotting mutiple runs.

\strong{indlab}\cr
\code{plotQMultiline()} labels each individual separately. When \code{showindlab=T}, 
individual labels are shown/displayed. When \code{showindlab=F}, individual labels are
not shown/displayed on the graph, although they are present in the underlying data.
Therefore, \code{showindlab} only control display of labels on the plot and nothing to 
do with label control in the data.\cr
The default \code{useindlab=F}, creates labels numerically in the 
original order of data but with zero padding. For example, if there are 10 individuals,
labels are 01, 02 up to 10. if there are 100 individuals, then labels are 001, 002 up
to 100. Zero padding to ensure optimal sorting. When \code{useindlab=T}, labels
are used from rownames of qlist dataframes. They are usually labelled 1,2,3.. if
read in using \code{readQ()}. This can be an issue with sorting by labels \code{sortind="label"}.
For STRUCTURE files with individual labels, they can be read
in automatically using \code{readQ(indlabfromfile=T)}.\cr
When group labels are in use, \code{grplab}, they are added to the individual
labels in both cases \code{useindlab=T} and \code{useindlab=F} separated by \code{indlabsep}. 
Default \code{indlabsep=" "} adds a space between individual label and grplab. For example,
group labels 'popA', 'popA'... will be '01 popA', '02 popA'... when \code{useindlab=F}
and usually '1 popA', '2 popA'... when \code{useindlab=T}. When multiple group labels
are in use, the are similarly concatenated one after the other to individual names
in the order in which the group labels were provided.

\strong{sortind}\cr
This argument takes one character as input.  Default NA means individuals are 
plotted in the same order as input. Individuals can be ordered by any one cluster. 
For ex. \code{sortind="Cluster1"} or \code{sortind="Cluster2"}.
To order by all clusters as the 'Sort by Q' option in STRUCTURE software, 
use \code{sortind="all"}. To order by individual labels, use \code{sortind="label"}.
When using \code{sortind} with \code{grplab}, individuals
are sorted within the groups.\cr

\strong{grplab}\cr
\code{grplab} must be a list. One or more label sets can be provided. Each 
label set must be a character vector equal to the number of individuals 
present in the qlist. 
For example, we can provide one set of grp labels as such:\cr
\code{labs1 <- c("Grp A","Grp A","Grp B","Grp B")}\cr
\code{grplab=list("grp"=labs1)}\cr

A second set of grp labels can be provided as such:
\code{labs2 <- c("Loc 1","Loc 1","Loc 2","Loc 3")}\cr
\code{grplab=list("population"=labs1,"location"=labs2)}\cr

\strong{subsetgrp}\cr
This argument takes one or more characters as input. Use only group labels 
exactly as used in the \code{grplab} vector. For ex. In case of two grps in 
order 'Pop A' and 'Pop B', use \code{subsetgrp=c("Pop B","Pop A")} to change 
order of groups. Use \code{subsetgrp="Pop B"} to subset only Pop B.\cr

\strong{outputfilename}\cr
Output file names are created automatically by default using the input qlist names.
When number of individuals exceed one page and extra pages are created, incremental 
numbers are added to the run name like so: -1, -2 etc. Custom file name can be provided
to \code{outputfilename}. The number of labels must be equal to the number of input 
runs. Incremental numbers are still added if extra pages are created.

See the \href{http://royfrancis.github.io/pophelper/}{vignette} for more details.
}
\examples{
\dontrun{
sfiles <- list.files(path=system.file("files/structure",package="pophelper"),full.names=TRUE)
slist <- readQ(sfiles)

# basic
plotQMultiline(slist[1])

# multiple files
plotQMultiline(slist[1:3])

# adjust samples per line (spl) and lines per page (lpp)
plotQMultiline(slist[1],spl=30)
plotQMultiline(slist[1],lpp=8)
plotQMultiline(slist[1],spl=75,lpp=10)

# sort individuals
plotQMultiline(slist[1],sortind="all")
plotQMultiline(slist[1],sortind="Cluster1")
plotQMultiline(slist[1],sortind="label")

# use custom individual labels
inds <- read.delim(system.file("files/structureindlabels.txt",package="pophelper"),header=FALSE,stringsAsFactors=FALSE)
rownames(slist[[1]]) <- inds$V1
plotQMultiline(slist[1],useindlab=T)

# change cluster colours
plotQMultiline(slist[1],clustercol=c("steelblue","coral"))

# change bar width and height
plotQMultiline(slist[1],barsize=1,spl=149,indlabsize=3,height=5)

# read group labels
md <- read.delim(system.file("files/metadata.txt", package="pophelper"), header=T,stringsAsFactors=F)

# plot with one group label set
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F])
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F],useindlab=T)

# sort ind within groups
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F],sortind="Cluster1")
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F],sortind="all")
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F],sortind="label")

# subset or reorder groups
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F],subsetgrp=c("CatB"))
plotQMultiline(qlist=slist[1],grplab=md[,2,drop=F],subsetgrp=c("Cat B","CatA"))

# using multiple group label sets
plotQMultiline(qlist=slist[1],grplab=md,ordergrp=TRUE)

# subset on a group from second group label set
plotQMultiline(qlist=slist[1],grplab=md,selgrp="cat",subsetgrp="CatB")

}
}
