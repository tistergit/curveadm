.PHONY: build

build:
	go build -a -ldflags '-extldflags "-static"' -trimpath -o sbin/curveadm $(PWD)/cmd/curveadm/main.go

debug:
	go build -gcflags '-N -l' -tags debug -o ~/.curveadm/bin/curveadm $(PWD)/cmd/curveadm/main.go

test:
	go test ./...
