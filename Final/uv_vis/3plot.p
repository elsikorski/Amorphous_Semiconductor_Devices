# This file will create a plot of the voltage output from HTIR-TC/Pt TCs
set term postscript font 'Times-Roman,24' 
set output 'fig1.eps'
#set linestyle 1 lc rgb '#ca0020' lt 1
#set linestyle 2 lc rgb '#0571b0' lt 1
set key ins left top
set key box lc rgb 'black'
set key height 1
set key width 1
#set xrange[0:4]
#set yrange[0:110]
set xlabel "wavelength (nm)"
set ylabel "% transmission"
#set xtics 0,1,1400
#set ytics 0,0.02,0.11
plot 'data.txt' using 1:2 with lines lw 7 title 'Ge40Se60', \
     'data.txt' using 1:3 with lines lc rgb '#d7191c' lw 7 title 'Ge40Se60 + A', \
     'data.txt' using 1:4 with lines lc rgb '#fdae61' lw 7 title 'Ge40Se60 + B', \
     'data.txt' using 1:5 with lines lc rgb '#abd9e9' lw 7 lt 7 title 'Ge40Se60 + C', \
     'data.txt' using 1:6 with lines lc rgb '#2c7bb6' lw 7 title 'Ge40Se60 + D'



