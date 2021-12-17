.SILENT:
.NOTPARALLEL:

container@build:
	docker-compose pull
	docker-compose build --pull
.PHONY: container@build

container@start:
	docker-compose up -d
.PHONY: container@start

container@stop:
	docker-compose down
.PHONY: container@stop

container@restart: container@stop container@start
.PHONY: container@restart

container@console:
	docker-compose exec nginx /bin/bash
.PHONY: container@console

container@logs:
	docker-compose logs -f
.PHONY: container@logs
