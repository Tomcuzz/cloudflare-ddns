FROM ubuntu:latest
RUN apt-get install curl dnsutils
COPY cloudflare-ddns.sh /
RUN chmod +x /cloudflare-ddns.sh
ENTRYPOINT ["/cloudflare-ddns.sh"]
