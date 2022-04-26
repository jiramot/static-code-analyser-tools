.PHONY: build run

build:
	docker build -t security .

run:
	docker run -it --rm security bash