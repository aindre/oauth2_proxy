FROM golang:1
MAINTAINER Pradhana Indra <pradhana.indra@gmail.com>
RUN go get github.com/aindre/oauth2_proxy
EXPOSE 8080 4180
ENTRYPOINT [ "./bin/oauth2_proxy" ]
CMD [ "--upstream=http://0.0.0.0:8080/", "--http-address=0.0.0.0:4180" ]