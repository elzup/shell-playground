for i in {100..264}; do
  nmap 192.168.100.$i -p80
done