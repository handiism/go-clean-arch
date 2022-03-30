BINARY=engine
test: 
	go test -v -cover -covermode=atomic ./...

engine:
	go build -o ${BINARY} app/*.go


unittest:
	go test -short  ./...

clean:
	if [ -f ${BINARY} ] ; then rm ${BINARY} ; fi
