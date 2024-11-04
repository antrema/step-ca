FROM smallstep/step-ca:0.28.0

USER root

COPY antrema-cassl.crt /usr/local/share/ca-certificates/antrema-cassl.crt
COPY antrema-caroot.crt /usr/local/share/ca-certificates/antrema-caroot.crt
COPY antrema-caopenvpn.crt /usr/local/share/ca-certificates/antrema-caopenvpn.crt
COPY antrema-caemail.crt /usr/local/share/ca-certificates/antrema-caemail.crt

RUN update-ca-certificates

USER step