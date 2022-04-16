FROM golang:latest

WORKDIR /go/src

COPY *.go .

RUN go build -o /app/math math.go

WORKDIR /app

CMD [ "./math" ]