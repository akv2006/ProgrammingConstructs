#!/usr/local/bin/bash -x

inch=1
feet=$((12 * $inch))
meter=$(echo 328 / 100 | bc -l)  #in feet
acre=4046.86 #in meter^2

## a

val=$(echo 42 / $feet | bc -l);
echo '42 inch =' $val


## b

plotWidthInMtr=$(echo 60 / $meter | bc -l )
plotHeightInMtr=$(echo 40 / $meter | bc -l ) 

echo Rectangular plot = $plotWidthInMtr mtr X $plotHeightInMtr mtr


## c
plotArea=$(echo $plotWidthInMtr \* $plotHeightInMtr | bc -l)
PlotArea25InAcre=$(echo 25 \* $plotArea / $acre | bc -l )
