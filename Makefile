all: style test

test:
	@mkdir -p out
	protoc --cpp_out=./out --ruby_out=./out --go_out=./out --java_out=./out *.proto

style:
	astyle -s2 *.proto

deps:
	which astyle
	gem install protobuf
	go get -u github.com/golang/protobuf/proto github.com/golang/protobuf/protoc-gen-go
