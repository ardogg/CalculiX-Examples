set term png
set grid
set xlabel "Penetration in mm"
set ylabel "Pressure in MPa"
set xrange [-0.1:0.1]
set yrange [-1000:1000]
set key top left
set out "pd.png"
plot "s2s-lin.hist" using ($3/5-0.3):($5) title "s2s-lin" w lp,\
     "s2s-tie.hist" using ($3/5-0.3):($5) title "s2s-tie" w lp,\
     "n2s-exp.hist" using ($3/5-0.3):($5) title "n2s-exp" w lp,\
     "n2s-lin.hist" using ($3/5-0.3):($5) title "n2s-lin" w lp,\
     "n2s-tab.hist" using ($3/5-0.3):($5) title "n2s-tab" w lp
