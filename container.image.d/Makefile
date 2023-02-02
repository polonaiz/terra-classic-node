build:
	docker build -t polonaiz/terra-classic-node:0.5.22 -f Dockerfile.0.5.22 .
	docker build -t polonaiz/terra-classic-node:0.5.23 -f Dockerfile.0.5.23 .

shell:
	docker run --rm -it polonaiz/terra-classic-node bash

login:
	docker login

push:
	docker push polonaiz/terra-classic-node:0.5.22
	docker push polonaiz/terra-classic-node:0.5.23
