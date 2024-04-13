FROM golang:1.22.2-alpine AS build

WORKDIR /tmp/go-app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build 

FROM scratch
COPY --from=build /tmp/go-app/go-web /app/go-web

EXPOSE 8080
CMD ["/app/go-web"]
