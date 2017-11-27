.PHONY: clean
clean:
	rm -f hello.js hello.wasm hello.html

hello.html: clean
	emcc hello.c -s WASM=1 -o hello.html

.PHONY: serve
serve: hello.html
	emrun --no_browser --port 8080 . &
	sleep 3
	google-chrome http://localhost:8080/hello.html
