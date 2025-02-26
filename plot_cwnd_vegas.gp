set terminal png size 800,600
set output "cwnd_vegas.png"
set title "Congestion Window Evolution in TCP Vegas Scenario"
set xlabel "Time (seconds)"
set ylabel "Congestion Window Size (packets)"
set grid
set key top right

plot "results/vegas/tcp1.tr" using 1:2 with lines lw 2 title "FTP1 (Vegas)", \
     "results/vegas/tcp2.tr" using 1:2 with lines lw 2 title "FTP2 (Vegas)"
