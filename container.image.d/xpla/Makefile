build:
	docker build -t polonaiz/xpla-node:1.1 .
	docker build -t polonaiz/xpla-node:latest .

shell:
	docker run --rm -it polonaiz/xpla-node bash

push:
	docker push polonaiz/xpla-node:1.1
	docker push polonaiz/xpla-node:latest

login:
	docker login
