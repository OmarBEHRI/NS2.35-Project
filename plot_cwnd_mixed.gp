set terminal png size 800,600
set output "cwnd_mixed.png"
set title "Congestion Window Evolution in Mixed Scenario"
set xlabel "Time (seconds)"
set ylabel "Congestion Window Size (packets)"
set grid
set key top right

plot "results/mixed/tcp1.tr" using 1:2 with lines lw 2 title "FTP1 (Reno)", \
     "results/mixed/tcp2.tr" using 1:2 with lines lw 2 title "FTP2 (Vegas)"
