all: build

base_tag = 1.0.0-2020.06.24

reflex:
	docker run --rm -it -v ${PWD}:/go/bin golang:1.14.0 sh -c "go get github.com/cespare/reflex"

build: reflex
	docker build \
      -t openrm/krakend:config-watcher \
      --build-arg BASE_IMAGE=openrm/krakend:${base_tag} \
      .
