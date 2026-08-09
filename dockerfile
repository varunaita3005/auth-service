From docker.io/library/golang:1.26
WORKDIR /app
COPY ./ /app/
RUN CGO_ENABLED=0 go build -o auth-service ./cmd/server
