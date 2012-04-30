set style line 1 lt 1 lc rgb '#c9615c' lw 0.9 # --- red
set style line 2 lt 1 lc rgb '#5e9c36' lw 0.9 # --- green
set style line 3 lt 1 lc rgb '#9077ae' lw 0.9 # --- violet
set style line 4 lt 1 lc rgb '#5f93c6' lw 0.9 # --- blue

# Line style for grid
set style line 81 lt 3  # dashed
set style line 81 lt rgb "#808080" lw 0.5  # grey

# Line style for axes
set style line 80 lt 0
set style line 80 lt rgb "#808080"


set term svg enhanced mouse size 800,600 fname "Helvetica Neue" fsize 9 rounded dashed
set size 1.0, 1.0
set border 3 lw 1.0
set xtics nomirror
set ytics nomirror
set origin 0.0, 0.0
set multiplot
set grid back linestyle 81 ytics
set key right top outside

set origin 0.0,0.0
set size 1.0,0.5
set title 'VSIZE - various values of MALLOC\_CONF'
plot 'data/lg20.csv' every::1::500 using 1 with lines ls 1 title 'lg\_chunk:20', \
     'data/lg22.csv' every::1::500 using 1 with lines ls 2 title 'lg\_chunk:22', \
     'data/lg18.csv' every::1::500 using 1 with lines ls 3 title 'lg\_chunk:18', \
     'data/lg_dirty_mult-4-lg_chunk-18.csv' every::1::500 using 1 with lines ls 4 title 'lg\_chunk:18,lg\_dirty\_mult:4'

set origin 0.0,0.5
set size 1.0,0.5
set title 'RSS - various values of MALLOC\_CONF'
plot 'data/lg20.csv' every::1::500 using 2 with lines ls 1 title 'lg\_chunk:20', \
     'data/lg22.csv' every::1::500 using 2 with lines ls 2 title 'lg\_chunk:22', \
     'data/lg18.csv' every::1::500 using 2 with lines ls 3 title 'lg\_chunk:18', \
     'data/lg_dirty_mult-4-lg_chunk-18.csv' every::1::500 using 2 with lines ls 4 title 'lg\_chunk:18,lg\_dirty\_mult:4'
