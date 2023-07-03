fmt:
	gofmt -e -s -l -w .

run:
	go mod tidy && go run cmd/bpm.go app:start

migrate_make:
	go run cmd/bpm.go migrate:make $(name)

migrate_all:
	go run cmd/bpm.go migrate:all

debug:
	dlv debug --headless --listen=:2345 --log --api-version=2 cmd/bpm.go -- app:start
