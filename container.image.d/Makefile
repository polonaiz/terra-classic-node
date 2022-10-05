build:
	docker build -t polonaiz/terra-classic-node:0.5.22 .
	docker build -t polonaiz/terra-classic-node:latest .

shell:
	docker run --rm -it polonaiz/terra-classic-node bash

push:
	docker push polonaiz/terra-classic-node:0.5.22
	docker push polonaiz/terra-classic-node:latest

login:
	docker login
