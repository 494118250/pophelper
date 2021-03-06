% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pophelper.R
\name{plotQ}
\alias{plotQ}
\title{Generate barplots from qlists.}
\usage{
plotQ(qlist = NULL, imgoutput = "sep", clustercol = NA, sortind = NA,
  grplab = NA, selgrp = NA, ordergrp = FALSE, subsetgrp = NA,
  grpmean = FALSE, panelspacer = 0.1, showsp = TRUE, sppos = "right",
  splab = NA, splabsize = NULL, splabangle = NULL, splabcol = "grey30",
  splabface = "plain", spbgcol = NA, showtitle = FALSE, titlelab = NA,
  titlehjust = 0, titlevjust = 0.5, titlesize = NULL,
  titlecol = "grey30", titleface = "plain", titlespacer = 1.4,
  titleangle = 0, showsubtitle = FALSE, subtitlelab = NA,
  subtitlehjust = 0, subtitlevjust = 0.5, subtitlesize = NULL,
  subtitlecol = "grey30", subtitleface = "plain", subtitlespacer = 1.5,
  subtitleangle = 0, grplabspacer = 0, grplabheight = NA,
  grplabpos = 0.25, grplabsize = NA, grplabangle = NA, grplabjust = NA,
  grplabcol = "grey30", grplabalpha = 1, showindlab = FALSE,
  sharedindlab = TRUE, useindlab = FALSE, indlabwithgrplab = FALSE,
  indlabspacer = 1.5, indlabheight = 0.2, indlabsep = " ",
  indlabsize = NULL, indlabangle = 90, indlabvjust = 0.5,
  indlabhjust = 1, indlabcol = "grey30", pointsize = NA,
  pointcol = "grey30", pointbgcol = "grey30", pointtype = "|",
  pointalpha = 1, linepos = 0.75, linesize = NA, linecol = "grey30",
  linetype = 1, linealpha = 1, showdiv = TRUE, divgrp = NA,
  divcol = "white", divtype = "21", divsize = 0.25, divalpha = 1,
  showlegend = FALSE, legendlab = NA, legendpos = "right",
  legendkeysize = 4, legendtextsize = 3, legendmargin = c(0.5, 0.5, 0.5,
  0), barsize = 1, barbordersize = 0, barbordercolour = NA,
  showyaxis = FALSE, showticks = FALSE, ticksize = 0.1,
  ticklength = 0.03, outputfilename = NA, imgtype = "png", height = NA,
  width = NA, dpi = 300, units = "cm", theme = "theme_grey",
  basesize = 5, font = "", na.rm = TRUE, quiet = FALSE,
  panelratio = c(3, 1), exportplot = TRUE, returnplot = FALSE,
  returndata = FALSE)
}
\arguments{
\item{qlist}{A qlist (list of dataframes). An output from \code{\link{readQ}}.}

\item{imgoutput}{A character with options: 'sep' or 'join'.If set to "sep", each run is plotted as separate image file. If set to "join", multiple runs are joined into a single image.}

\item{clustercol}{A vector of colours for clusters. If NA, colours are automatically generated. K=1 to K=12 are custom unique colours while K>12 are coloured by function \code{gplots::rich.colors()}.}

\item{sortind}{A character indicating how individuals are sorted. Default is NA (Same order of individuals as in input file). Other options are 'all' (sorting by values of all clusters), by any one cluster (eg. 'Cluster1') or 'labels' (sorting by individual labels). See details.}

\item{grplab}{A dataframe with one or more columns (group label sets), and rows equal to the number of individuals. See details.}

\item{selgrp}{A single character denoting a selected group label set. The selected label must be a group label title used in \code{grplab}. See details.}

\item{ordergrp}{A logical indicating if individuals must be grouped into contiguous blocks based on \code{grplab} starting with \code{selgrp}.}

\item{subsetgrp}{A character or character vector with group names to subset or reorder groups. Only applicable when \code{grplab} is in use. Default is NA. See details.}

\item{grpmean}{A logical indicating if q-matrix must be converted from individual values to group mean values. Applicable only when \code{grplab} is in use and mean is calculated over \code{selgrp}.}

\item{panelspacer}{A numeric indicating the spacing between barplot panels in cm. Defaults to 0.06cm.}

\item{showsp}{A logical indicating if strip panels on right side must be shown. Strip panel by default displays file name and K value. Defaults to TRUE.}

\item{sppos}{A character indicating position of strip panel. One of 'right' or 'left'. Defaults to 'right'.}

\item{splab}{A character or character vector denoting items displayed in the strip panels. Length must be equal to number of runs.}

\item{splabsize}{A numeric indicating the size of the strip panel label. Computed automatically when set to NULL. Note that overall text size can be controlled using \code{basesize}.}

\item{splabangle}{A numeric indicating angle/rotation of the strip panel label. Defaults to NULL. Automatically set to -90.}

\item{splabcol}{A character indicating the colour of the strip panel label. Defaults to "grey30".}

\item{splabface}{A character indicating the font face of strip panel label. One of 'plain', 'italic', 'bold' or 'bold.italic'. Defaults to 'plain'. Applicable only when \code{showsp=T}.}

\item{spbgcol}{A character denoting the background colour of the strip panel. Defaults to white.}

\item{showtitle}{A logical indicating if plot title must be shown on the top. Defaults to FALSE. If TRUE and \code{titlelab=NA}, file name is displayed by default.}

\item{titlelab}{A character or character vector for title text. Defaults to NA, and when \code{showtitle=TRUE} displays file name.}

\item{titlehjust}{A numeric denoting the horizontal justification of the title. Defaults to 0 (left).}

\item{titlevjust}{A numeric denoting the vertical justification of the title. Defaults to 0.5 (center).}

\item{titlesize}{A numeric indicating the size of the title text. Computed automatically when set to NULL. Note that overall text size can be controlled using \code{basesize}.}

\item{titlecol}{A colour character for title. Defaults to "grey30".}

\item{titleface}{A character indicating the font face of title label. One of 'plain', 'italic', 'bold' or 'bold.italic'. Defaults to 'plain'. Applicable only when \code{showtitle=T}.}

\item{titlespacer}{A numeric indicating the space below the title. Defaults to 1.2.}

\item{titleangle}{A numeric indicating the angle/rotation of the title. Defaults to 0.}

\item{showsubtitle}{A logical indicating if plot subtitle must be shown on the top. Defaults to FALSE. If TRUE and \code{subtitlelab=NA}, file name is displayed by default.}

\item{subtitlelab}{A character or character vector for subtitle text. Defaults to NA, and when \code{showsubtitle=TRUE} displays file name.}

\item{subtitlehjust}{A numeric denoting the horizontal justification of the subtitle. Defaults to 0 (left).}

\item{subtitlevjust}{A numeric denoting the vertical justification of the subtitle. Defaults to 0.5 (center).}

\item{subtitlesize}{A numeric indicating the size of the subtitle text. Computed automatically when set to NULL. Note that overall text size can be controlled using \code{basesize}.}

\item{subtitlecol}{A colour character for subtitle. Defaults to "grey30".}

\item{subtitleface}{A character indicating the font face of subtitle label. One of 'plain', 'italic', 'bold' or 'bold.italic'. Defaults to 'plain'. Applicable only when \code{showsubtitle=T}.}

\item{subtitlespacer}{A numeric indicating the space below the subtitle. Defaults to 1.2.}

\item{subtitleangle}{A numeric indicating the angle/rotation of the subtitle. Defaults to 0.}

\item{grplabspacer}{A numeric indicating the space between the plot panels and the group label area in cm. Defaults to 0cm. Applicable only when \code{grplab} are in use.}

\item{grplabheight}{A numeric indicating the height of the group label area in cm. Defaults to 0.4cm. Multiple group sets are multiplied by 0.4. Applicable only with \code{grplab}. See details.}

\item{grplabpos}{A numeric indicating the y position of the group labels. Applicable only with group labels. Defaults to 0.}

\item{grplabsize}{A numeric indicating the size of the group labels. Default range between 1.5 - 2.5 depending on number of individuals. This text size is not affected by \code{basesize}.}

\item{grplabangle}{A numeric indicating the angle/rotation of group labels. 0 is horizontal while 90 is vertical. Default is 0.}

\item{grplabjust}{A numeric indicating the justification of group labels. Defaults to 0.5 if grplabangle=0  or 1 if grplabangle between 20 and 135.}

\item{grplabcol}{A colour character for the colour of group labels. Defaults to "grey30".}

\item{grplabalpha}{A numeric between 0 and 1 denoting transparency of group labels. Defaults to 1.}

\item{showindlab}{A logical indicating if individual labels must be shown. See details.}

\item{sharedindlab}{A logical indicating if only one set of shared individual labels must be shown below all plots. Applicable only when \code{imgoutput="join"}. Individual labels are visible only when \code{showindlab=TRUE}.}

\item{useindlab}{A logical indicating if individual labels must be read from the rownames of qlist dataframes and used as individual labels. See details.}

\item{indlabwithgrplab}{A logical indicating if individual labels must be concatenated with grplab. Applies only when grplab is in use. Relevant for sorting by label.}

\item{indlabspacer}{A numeric denoting space between the individual label and the plot area. Default set to 0.}

\item{indlabheight}{A numeric indicating space below the individual label panel. Increase to 0.1, 0.2 etc if labels are clipped off.}

\item{indlabsep}{A character used as separator when concatenating individual labels and group labels. Defaults to space \code{indlabsep=" "}.}

\item{indlabsize}{A numeric indicating the size of the individual labels. Computed automatically when set to NULL.  Note that overall text size can be controlled using \code{basesize}.}

\item{indlabangle}{A numeric indicating the angle/rotation of individual labels. 0 is horizontal while 90 is vertical. Defaults to 90.}

\item{indlabvjust}{A numeric denoting vertical justification of the individual labels. Defaults to 0.5.}

\item{indlabhjust}{A numeric denoting the horizontal justification of the individual labels. Defaults to 1.}

\item{indlabcol}{A colour character for the colour of individual labels. Defaults to "grey30".}

\item{pointsize}{A numeric indicating the size of points on label marker line. Default range between 1.2 - 3.2 depending on number of individuals.}

\item{pointcol}{A colour character for the colour of points on the label marker line. Defaults to "grey30".}

\item{pointbgcol}{A colour character for the background of marker point for certain point types.}

\item{pointtype}{A character or number for the type of points on the label marker line. Defaults to |. Same as pch in standard R.}

\item{pointalpha}{A numeric between 0 and 1 denoting transparency of the points. Defaults to 1.}

\item{linepos}{A numeric indicating the y position of the label marker line and the points. Applicable only with group labels. Defaults to 1.}

\item{linesize}{A numeric indicating the thickness of the label marker line. Default range between 0.3 and 0.6 depending on number of individuals.}

\item{linecol}{A colour character for the label marker line. Defaults to "grey30".}

\item{linetype}{A numeric indicating the type of line for marker line. Same as lty in standard R. Default value is 1.}

\item{linealpha}{A numeric between 0 and 1 denoting transparency of the marker line. Defaults to 1.}

\item{showdiv}{A logical indicating if divider lines between groups must be drawn. Applicable only when group labels are in use.}

\item{divgrp}{A character or character vector with one or more group label titles denoting which groups are used to draw divider lines. This must be a group label title used in \code{grplab}. If not provided, the value in \code{selgrp} is used by default.}

\item{divcol}{A character or hexadecimal colour denoting the colour of the divider line. Default is white.}

\item{divtype}{A numeric indicating the type of line for the divider line. Same as lty in standard R. Default value is '21'.}

\item{divsize}{A numeric indicating the thickness of the divider line. Default is 0.25.}

\item{divalpha}{A numeric between 0 and 1 denoting transparency of the divider line. Defaults to 1.}

\item{showlegend}{A logical indicating if legend denoting cluster colours must be plotted. Defaults to FALSE.}

\item{legendlab}{A character or character vector to for legend cluster labels. Must be equal to max number of clusters.}

\item{legendpos}{A character 'right' or 'left' denoting position of the legend. Defaults to 'left'.}

\item{legendkeysize}{A numeric indicating size of the legend key. Defaults to 4.}

\item{legendtextsize}{A numeric indicating size of the legend text. Defaults to 3.}

\item{legendmargin}{A numeric vector of length 4 indicating top, right, bottom and left margins of the legend.}

\item{barsize}{A numeric indicating the width of the bars. Defaults to 1.}

\item{barbordersize}{A numeric indicating border size of bars. Defaults to 0. Visible only when \code{barbordercolour} is not NA.}

\item{barbordercolour}{A single colour for bar border. Defaults to NA. Visible only when \code{barbordersize} is larger than zero and set to a colour other than NA.}

\item{showyaxis}{A logical indicating if y-axis labels should be displayed or not. Defaults to FALSE. Y-axis size is same as \code{indlabsize}.}

\item{showticks}{A logical indicating if ticks on axis should be displayed or not. Defaults to FALSE. Applies to x and y axis. Y-axis ticks are visible only when \code{showyaxis=TRUE}. Tick colour is same as \code{indlabcol}.}

\item{ticksize}{A numeric indicating size of ticks. Defaults to 0.2. Applies to both x and y axis.}

\item{ticklength}{A numeric indicating length of tick marks in cm. Defaults to 0.03. Applies to both x and y axis.}

\item{outputfilename}{A character or character vector denoting output file name without file extension. See details.}

\item{imgtype}{A character indicating output image file type. Possible options are "png","jpeg","tiff" or "pdf".}

\item{height}{A numeric indicating the height of a single run panel. By default, automatically generated based on number of runs. Separate plots use 1.8cm and joined plots use 1.2cm for single panel. See details.}

\item{width}{A numeric indicating the width of the whole plot. By default, automatically generated based on number of individuals. Ranges between 5cm and 30cm.}

\item{dpi}{A numeric indicating the image resolution in pixels per inch (PPI). Defaults to 300. If \code{imgtype="pdf"}, dpi is fixed at 300.}

\item{units}{A numeric indicating the units of height and width. Default set to "cm". Other options are 'px', 'in' or 'mm'.}

\item{theme}{A character indicating ggplot theme to be used. Use like "theme_grey", "theme_bw" etc.}

\item{basesize}{A numeric indicating overall text size. Defaults to 5 suitable for export. Set to 11 for returned plot.}

\item{font}{A character indicating font family to be used in the plots. Uses default system fonts by default for jpeg, png and tiff. Uses 'Helvetica' as default for pdf. Use package \code{extrafonts} to import custom fonts. See vignette for examples.}

\item{na.rm}{A logical indicating if NAs are removed from data, else \code{ggplot} prints warning messages for NAs. If set to TRUE, NAs are removed before plotting and \code{ggplot} NA warning is suppressed.}

\item{quiet}{A logical indicating if any messages are printed to console.}

\item{panelratio}{A two value integer vector denoting ratio of plot panel to grplab panel. Defaults to \code{c(3,1)}. Applicable only when \code{grplab} is in use.}

\item{exportplot}{A logical indicating if a plot image must be exported into the working directory.}

\item{returnplot}{A logical indicating if ggplot plot objects must be returned. See 'Value'.}

\item{returndata}{A logical indicating if processed data must be returned. See 'Value'.}
}
\value{
When \code{returnplot=TRUE}, plot object(s) are returned. When \code{grplab=NA}, 
a ggplot2 object is returned. When \code{grplab} is in use, a gtable (output from gridExtra::arrangeGrob()) 
list is returned. When \code{returndata=TRUE}, the input qlist is modified (sorted, subsetted etc)
and returned. If \code{grplab} is in use, a list of modified qlist and grplab is returned.
If \code{returnplot=TRUE} and \code{returndata=TRUE} are both set, then a named list
(plot,data) is returned. The plot item contains the ggplot2 object or gtable and 
the data contains qlist (and grplab).
}
\description{
Generate separate or joined barplots (group-level) from qlists.
}
\details{
\strong{sortind}\cr
This argument takes one character as input.  Default NA means individuals are 
plotted in the same order as input. Individuals can be ordered by any one cluster. 
For ex. \code{sortind="Cluster1"} or \code{sortind="Cluster2"}.
To order by all clusters as the 'Sort by Q' option in STRUCTURE software, 
use \code{sortind="all"}. When using \code{sortind="label"}, individuals are
sorted by individual labels (along with grplab if present). Individual
labels can be displayed using \code{showindlab=T}. When using \code{sortind} 
with \code{grplab}, individuals are sorted within the groups.\cr

\strong{grplab}\cr
\code{grplab} must be a data.frame. One or more label sets can be provided. Each 
label set must be a character vector equal to the number of individuals 
present in the qlist. 
For example, we can provide one group label set as such:\cr
\code{grplab=data.frame(labs=c("Grp A","Grp A","Grp B","Grp B"),stringsAsFactors=F)}\cr

Two group label sets can be provided as such:\cr
\code{grplab=data.frame(labs=c("Grp A","Grp A","Grp B","Grp B"),loc=c("Loc 1","Loc 2","Loc 2","Loc 2"),stringsAsFactors=F)}\cr

\strong{selgrp}\cr
When multiple group label sets are in use, \code{selgrp} defines which 
group label set is used for group ordering (\code{ordergrp}), subsetting (\code{subsetgrp}) 
and group mean (\code{grpmean}). \code{selgrp} is also used for plotting divider 
lines and and sorting (\code{sortind}). If \code{selgrp} is not specified, 
the first group label set is used by default.\cr

\strong{ordergrp}\cr
When using \code{grplab}, labels may not be in contiguous blocks. Using \code{ordergrp=TRUE}, 
regroups individuals into contiguous blocks for all group label sets starting with \code{selgrp}.\cr

\strong{subsetgrp}\cr
This argument takes one or more characters as input. Use only group labels used 
in one of the group label sets in \code{grplab}. For ex. In case of a group label 
set 'labs' with two grps in order 'Grp A' and 'Grp B', use \code{subsetgrp=c("Grp B","Grp A")} 
to change order of groups. Use \code{subsetgrp="Grp B"} to subset only Grp B. 
When using multiple group label sets, use \code{selgrp} to declare which group label set to subset.\cr

\strong{outputfilename}\cr
Default is \code{outputfilename=NA} which means that output file names are automatically generated. 
When \code{imgoutput="sep"}, the names of the qlist are used to create output labels. When \code{imgoutput="join"},
one output label is created for all input files in this format: JoinedNFiles-YYYYMMDDHHMMSS, 
where N stands for number of runs joined, and the ending stands for current system date and time. 
If \code{outputfilename} is provided, when \code{imgoutput="sep"}, \code{outputfilename} must be 
a character vector equal to length of input runs. When \code{imgoutput="join"}, \code{outputfilename} 
must be a character of length one. File extensions like .png etc must not be provided.\cr

\strong{height}\cr
Argument \code{height} denotes the height of one run panel. With joined plots, the \code{height} is multiplied by number of runs. The height does not include label panel. The \code{grplabheight} is used to define the full height of the lab panel. If \code{grplabheight} is not provided, it is calculated based on the number of group label sets.
final_image_height = (height*num_of_runs)+grplabheight
It is possible to set either height or width and leave other as default.\cr

\strong{indlab}\cr
When \code{showindlab=T}, individual labels are shown/displayed. When \code{showindlab=F}, 
individual labels are not shown/displayed on the graph, although they are present in the underlying data.
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

See the \href{http://royfrancis.github.io/pophelper/}{vignette} for more details.
}
\examples{
slist <- readQ(list.files(path=system.file("files/structure",package="pophelper"),full.names=TRUE))

# plot one separate figure
plotQ(qlist=slist[1])

# plot two separate figures
plotQ(qlist=slist[1:2])

# plot a joined figure with multiple plots
plotQ(qlist=slist[1:2],imgoutput="join")

# sort individuals
plotQ(qlist=slist[c(1,3)],sortind="all")
plotQ(qlist=slist[c(1,3)],sortind="Cluster1")
plotQ(qlist=slist[c(1,3)],sortind="label")
plotQ(qlist=slist[c(1,3)],sortind="all",imgoutput="join")

# read group labels
md <- read.delim(system.file("files/metadata.txt", package="pophelper"), header=T,stringsAsFactors=F)

# plot with one group label set
plotQ(qlist=slist[1],grplab=md[,2,drop=F])
plotQ(qlist=slist[1:2],grplab=md[,2,drop=F],imgoutput="join")

# sort within groups
plotQ(qlist=slist[1:2],grplab=md[,2,drop=F],imgoutput="join",sortind="all")
plotQ(qlist=slist[1:2],grplab=md[,2,drop=F],imgoutput="join",sortind="Cluster1")
plotQ(qlist=slist[1:2],grplab=md[,2,drop=F],imgoutput="join",sortind="label")

# reorder groups
plotQ(qlist=slist[1],grplab=md[,2,drop=F],subsetgrp=c("CatB","CatA"))

# multiple group label sets and ordergrp
plotQ(qlist=slist[1],grplab=md,ordergrp=TRUE)
plotQ(qlist=slist[1:2],grplab=md,ordergrp=TRUE,imgoutput="join")

# sort in second label group set cat
plotQ(qlist=slist[1],grplab=md,selgrp="cat",sortind="all")

# use default individual labels
plotQ(slist[1],showindlab=T,width=15)

# use custom individual labels
inds <- read.delim(system.file("files/structureindlabels.txt",package="pophelper"),header=FALSE,stringsAsFactors=FALSE)
rownames(slist[[1]]) <- inds$V1
plotQ(slist[1],showindlab=T,useindlab=T,width=15)

# change cluster colours
plotQ(slist[1],clustercol=c("steelblue","coral"))

# plot a custom dataframe
temp <- list("custom"=data.frame(Cluster1=c(0.2,0.3,0.6,0.8),Cluster2=c(0.8,0.7,0.4,0.2)))
plotQ(temp)

}
\seealso{
\code{\link{plotQMultiline}}
}
