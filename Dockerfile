FROM smallstep/step-ca:0.18.2

USER root

COPY antrema-cassl.crt /usr/local/share/ca-certificates/antrema-cassl.crt
COPY antrema-caroot.crt /usr/local/share/ca-certificates/antrema-caroot.crt

RUN update-ca-certificates

USER step