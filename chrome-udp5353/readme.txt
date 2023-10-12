#禁止chrome监听udp/5353

mkdir -p /etc/opt/chrome/policies/managed
echo '{ "EnableMediaRouter": false }' > /etc/opt/chrome/policies/managed/disable_mediarouter.json


# chrome://flags 里面禁止   ssdp, mdns
