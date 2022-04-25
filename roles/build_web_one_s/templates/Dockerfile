FROM httpd:2.4 as build
ARG  NAME_DISTR={{ file_name_1c }}
ADD ./distribution/$NAME_DISTR /tmp/
RUN /tmp/setup-full-{{ version_1c }}-x86_64.run --mode unattended --enable-components server,ws,ru && rm /tmp/*.*

FROM httpd:2.4
COPY ./apache2.conf /usr/local/apache2/conf/httpd.conf
ADD ./config/ /usr/local/apache2/conf/1c_conf/
ADD ./vrd/ /usr/local/apache2/htdocs/
COPY --from=build /opt/1cv8/ /opt/1cv8/

EXPOSE 80