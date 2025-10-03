for i in {2..200}; do
  nmap 192.168.8.$i -p80
done