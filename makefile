build:
	mkdir -p build
	mkdir -p bin
	as src/hello.s -o build/hello_asm.o 
	ld build/hello_asm.o -o bin/hello_asm
	gcc  src/hello.c -o bin/hello_c
	rustc src/hello.rs -o bin/hello_rs
	cp src/hello.py bin/hello.py
	cp src/hello.java bin/hello.java
	cp src/hello.rb bin/hello.rb
	cp src/hello.go bin/hello.go
	g++ src/hello.cpp -o bin/hello_cpp
clean:
	rm -rf build
	rm -rf bin

.PHONY: build
