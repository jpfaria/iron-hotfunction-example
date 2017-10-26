binary:
	gox -output "{{.Dir}}" \
		-os `go env GOHOSTOS` \
		-arch=`go env GOHOSTARCH`
cross:
	rm -rf ./build
	gox -output "./build/{{.Dir}}-{{.OS}}-{{.Arch}}" \
		-os "linux darwin" \
		-arch="amd64"

docker:
	docker build --pull -t $(PROJECT_NAME) .
