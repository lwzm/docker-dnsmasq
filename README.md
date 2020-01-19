### Docker dnsmasq

Compose file:

```yaml
version: "3"

services:

  dns:
    image: lwzm/dnsmasq
    volumes:
      - /etc/localtime:/etc/localtime:ro
      - ./hosts:/etc/hosts:ro
    ports: 
      - 53:53/udp
```

Hosts file:

```
curl -L https://github.com/StevenBlack/hosts/raw/master/alternates/fakenews-gambling-porn-social/hosts \
    | awk '$1 ~ /^[0-9]/' >hosts
```
