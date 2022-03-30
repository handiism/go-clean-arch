BINARY=engine.exe
test: 
	go test -v -cover -covermode=atomic ./...

build:
	go build -o ${BINARY} app/main.go

unittest:
	go test -short  ./...

run:
	go run app/main.go
