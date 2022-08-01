.PHONY: build run

build:
	docker buildx create --use
	docker buildx build --push --platform linux/arm64,linux/amd64 -t ghcr.io/jiramot/static-code-analyser-tools .

run:
	docker run -it --rm security bash