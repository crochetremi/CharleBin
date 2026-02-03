.PHONY: install start test lint fix

install:
	/usr/bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	# ./vendor/bin/phpunit tst
	./vendor/bin/phpunit tst/FilterTest.php
lint:
	@echo "--- 1. Vérification de la syntaxe PHP ---"
	find . -type f -name '*.php' -not -path './vendor*' -exec php -l {} \; | grep -v "No syntax errors" || true

	@echo "--- 2. Lancement de PHP CodeSniffer (PSR1) ---"
	./vendor/bin/phpcs --standard=PSR1 --ignore=vendor .

	@echo "--- 3. Lancement de PHPMD ---"
	./vendor/bin/phpmd . text cleancode,codesize,design,naming,unusedcode --exclude vendor || true

	@echo "--- 4. Lancement de PHPStan ---"
	./vendor/bin/phpstan analyse . --level=1 || true

fix:
	@echo "=== Auto-fixing with PHPCBF (PSR1) ==="
	./vendor/bin/phpcbf --standard=PSR1 --ignore=vendor . || true
