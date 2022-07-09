# Simple Load Balancer Dockerized
Ref: https://github.com/mlhpdx/SimplestLoadBalancer

### Get the load balancer running
`docker-compose up`

### Registering targets
You can register targets using the handy scripts provided.
Targets expire after some time, so you must refresh them periodically

Syntax: `./register.sh <load_balancer_ip> <load_balancer_port> <target_ip> <target2_ip>`

Example: `./register.sh 127.0.0.1 1111 192.168.1.1 192.168.2.1 192.168.3.1`
