FROM alpine:latest
RUN apk add --no-cache git
WORKDIR /app
COPY . .
RUN chmod +x entrypoint.sh
ENTRYPOINT [/app/entrypoint.sh]
ADD ./content/* /usr/share/ubuntu/html
