#!/bin/bash
sed -i 's/AllowOverride None/AllowOverride All/' /usr/local/apache2/conf/httpd.conf
sed -i 's/#LoadModule include_module/LoadModule include_module/' /usr/local/apache2/conf/httpd.conf 
sed -i 's/#LoadModule rewrite_module/LoadModule rewrite_module/' /usr/local/apache2/conf/httpd.conf
exec "$@"
