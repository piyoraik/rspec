IMAGE 	:= raityupiyo/rspec
VERSION := v1.1

build:
	@docker build --target spec -t ${IMAGE}:${VERSION} ./
up:
	@docker run --rm -t ${IMAGE}:${VERSION} ${github} 
debug:
	@docker run -it -d ${IMAGE}:${VERSION} ${github}