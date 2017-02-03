FROM colstrom/http-mode.fish

RUN package install \
                    gettext \
                    jq

COPY functions/* /etc/fish/functions/
COPY templates /opt/templates

ENV TEMPLATES /opt/templates
