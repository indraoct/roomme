FROM scratch

MAINTAINER Indra Octama omyank2007i@gmail.com

ADD main ./

ARG appname=roomme
ARG http_port=9000

ENTRYPOINT ["/main"]

EXPOSE $http_port