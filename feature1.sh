#Count the number of ip hits
awk '{a[$1]++}END{for(i in a){print a[i]" "i | "sort -k 1 -n -r"}}'  ./log_input/log.txt | awk 'NR<=10 {print $2", "$1 > "./log_output/hosts.txt"}'
