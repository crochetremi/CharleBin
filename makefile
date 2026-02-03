install:
	/usr/bin/composer install

start:
	php -S localhost:8080

test:
	# cd tst && ../vendor/bin/phpunit
	./vendor/bin/phpunit tst
lint:
	@echo "--- 1. Vérification de la syntaxe PHP ---"
	# Le "|| true" empêche make de s'arrêter si tout est correct
	find . -type f -name '*.php' -not -path './vendor*' -exec php -l {} \; | grep -v "No syntax errors" || true

	@echo "--- 2. Lancement de PHP CodeSniffer ---"
	# --ignore=vendor permet de scanner . sans scanner les libs
	./vendor/bin/phpcs --standard=PSR1 --ignore=vendor . || true

	@echo "--- 3. Lancement de PHPMD ---"
	# --exclude vendor est crucial ici
	./vendor/bin/phpmd . text cleancode,codesize,design,naming,unusedcode --exclude vendor || true

	@echo "--- 4. Lancement de PHPStan ---"
	# PHPStan est intelligent et ignore vendor par défaut, mais src/ est préférable
	./vendor/bin/phpstan analyse . --level=1 || true

fix:
	@echo "=== Auto-fixing with PHPCBF ==="
	./vendor/bin/phpcbf --extensions=php ./lib/ || true
