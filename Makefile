.PHONY: \
				build \
				run \
				clean

.PHONY: all
all: build run;

build:
	docker build -t $(USER)/nginx:0.1 .

run:
	docker run -dt --name test-nginx -p 80:80 -v volumes:/volumes/assets -v hoge:/usr/share/nginx/html/hoge/ $(USER)/nginx:0.1

clean:
	docker rm -f test-nginx
	docker rmi $(USER)/nginx:0.1
