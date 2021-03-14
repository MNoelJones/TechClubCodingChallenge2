all: docker

docker:
	docker build -t spectrum .
	docker save -o ../spectrum_docker.tar spectrum

clean:
	-rm *.tap