all: build-web run fix-perms import-db

fetch-sources:
	./tools/fetch-source.sh
	sed -i 's/localhost/db/g' source/web/config.php
	echo "php_flag display_errors off" >> source/web/.htaccess

build-web:
	docker-compose build web

run:
	docker-compose up -d

fix-perms-web:
	docker-compose exec web sh /fix-perms.sh

import-db:
	docker-compose exec db sh /data_import/import.sh
