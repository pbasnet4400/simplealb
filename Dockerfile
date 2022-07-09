# Dockerfile for simple load balancer
FROM mcr.microsoft.com/dotnet/sdk:6.0

COPY src/ /app
WORKDIR /app
RUN ["chmod","+x","SimplestLoadBalancer"]
CMD ["./SimplestLoadBalancer","--server-port-range","4000-4002","--unwise","--admin-port","1111"]