net.ipv4.ip_local_port_range:
  sysctl.present:
    - value: 10000 65000
fs.file-max:
  sysctl.present:
    - value: 2000000
net.ipv4.ip_forward:
  sysctl.present:
    - value: 1
vm.swappiness:
  sysctl.present:
    - value: 0
net.ipv4.tcp_max_syn_backlog:
  sysctl.present:
    - value: 4096 
net.ipv4.tcp_syncookies:
  sysctl.present:
    - value: 1 
net.ipv4.tcp_syn_retries:
  sysctl.present:
    - value: 2
net.ipv4.tcp_synack_retries:
  sysctl.present:
    - value: 2
net.ipv4.tcp_sack:
  sysctl.present:
    - value: 0
sysctl:
  cmd.run:
    - name: sysctl -p
