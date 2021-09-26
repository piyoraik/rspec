IMAGE 	:= rspec
VERSION := v1.0

build:
	docker build --target spec -t ${IMAGE}:${VERSION} ./
up:
	docker run --rm ${IMAGE}:${VERSION} ${github}