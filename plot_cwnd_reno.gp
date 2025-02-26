set terminal png size 800,600
set output "cwnd_reno.png"
set title "Congestion Window Evolution in TCP Reno Scenario"
set xlabel "Time (seconds)"
set ylabel "Congestion Window Size (packets)"
set grid
set key top right

plot "results/reno/tcp1.tr" using 1:2 with lines lw 2 title "FTP1 (Reno)", \
     "results/reno/tcp2.tr" using 1:2 with lines lw 2 title "FTP2 (Reno)"
