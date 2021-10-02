RIMAGE 	 := raityupiyo/rspec
RVERSION := v1.1
DIMAGE 	 := raityupiyo/rails
DVERSION := v1.0
DNAME		 := debug_rails

build:
	@docker build --target spec -t ${RIMAGE}:${RVERSION} ./
	@docker build --target dev -t ${DIMAGE}:${DVERSION} ./

up:
	@docker run --rm -d --name ${DNAME} -p 3000:3000 ${DIMAGE}:${DVERSION} ${github}
	@docker run --rm -t ${RIMAGE}:${RVERSION} ${github} 

exec:
	@docker exec -it ${DNAME} bash

down:
	@docker rm -f ${DNAME}

alldown:
	@docker rm -f `docker ps -a -q`