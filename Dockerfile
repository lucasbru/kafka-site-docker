FROM httpd:2.4
EXPOSE 80
ADD init.sh /
RUN chmod +x /init.sh
ENTRYPOINT ["/init.sh"]
CMD ["httpd-foreground"]