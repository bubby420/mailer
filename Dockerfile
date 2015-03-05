FROM google/golang

ADD .netrc /root/.netrc

RUN mkdir -p /gopath/src/github.com/lavab/mailer
ADD . /gopath/src/github.com/lavab/mailer
RUN go get -v github.com/lavab/mailer

CMD []
ENTRYPOINT ["/gopath/bin/mailer"]
