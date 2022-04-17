FROM alpine AS builder
RUN apk add --no-cache gfortran make musl-dev

WORKDIR /build
COPY src/ ./

RUN make

FROM alpine

WORKDIR /app
COPY --from=builder /build/hello .

CMD ["./hello"]