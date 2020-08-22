FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y curl dnsutils
COPY cloudflare-ddns.sh /
RUN chmod +x /cloudflare-ddns.sh
ENTRYPOINT ["/cloudflare-ddns.sh"]
