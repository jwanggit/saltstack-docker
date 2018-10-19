bigip:
  host: 172.12.0.2
  username: admin
node:
  node1:
    name: 172.12.0.3:443
    address: 172.12.0.3
  node2:
    name: 172.12.0.4:443
    address: 172.12.0.3
  node3:
    name: 172.12.0.5:443
    address: 172.12.0.3
pool:
  name: pool1
virtual:
  name: virtual1
  destination: 192.123.0.2:443