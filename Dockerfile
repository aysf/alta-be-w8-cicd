FROM golang:1.16-alpine

WORKDIR /app

COPY ./go.mod ./
COPY ./go.sum ./

RUN ./main.go ./

COPY ./main.go ./

RUN go build -o program

CMD ./program