FROM golang:alpine as builder

WORKDIR /app
COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o k8s-demo -ldflags="-w -s"

ENTRYPOINT [ "./k8s-demo"]

