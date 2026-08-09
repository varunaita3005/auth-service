From docker.io/library/golang:1.26 AS Builder   
WORKDIR /app
COPY ./ /app/
RUN CGO_ENABLED=0 go build -o auth-service ./cmd/server

From docker.io/redhat/ubi9:latest
COPY --from=Builder /app/auth-service .
CMD ["./auth-service"]