
def:
	docker build -t "pyramation/postgres-temporal-plv8" .

ssh:
	docker run -it pyramation/postgres-temporal-plv8 /bin/bash

run:
	docker run -p 5432:5432 --name temporal-plv8 pyramation/postgres-temporal-plv8

daemon:
	docker run -p 5432:5432 --name temporal-plv8 -d pyramation/postgres-temporal-plv8

push:
	docker push pyramation/postgres-temporal-plv8
