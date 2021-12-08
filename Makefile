RIMAGE 	 := raityupiyo/rspec
RVERSION := $(shell cat .rspec.version )
DIMAGE 	 := raityupiyo/rails
DVERSION := $(shell cat .dev.version)
DNAME		 := debug_rails

up:
	@docker run --rm -d --name ${DNAME} -p 3000:3000 ${DIMAGE}:${DVERSION} ${github}
	@docker run --rm -t ${RIMAGE}:${RVERSION} ${github} 

exec:
	@docker exec -it ${DNAME} bash

down:
	@docker rm -f ${DNAME}

alldown:
	@docker rm -f `docker ps -a -q`
