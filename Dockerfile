FROM python:3.11-alpine

COPY . /src

RUN cd /src && \
    /usr/local/bin/python3 setup.py install

ENTRYPOINT [ "/usr/local/bin/mochad_dispatch", "-f" ]
