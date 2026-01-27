# Guide de contribution à CharleBin

Merci de votre intérêt pour contribuer à CharleBin ! Ce document définit les règles et processus pour contribuer au projet.

## Table des matières

- [Code de conduite](#code-de-conduite)
- [Comment contribuer](#comment-contribuer)
- [Processus de Pull Request](#processus-de-pull-request)
- [Standards de code](#standards-de-code)
- [Convention de commits](#convention-de-commits)
- [Linters et tests](#linters-et-tests)

## Code de conduite

En participant à ce projet, vous acceptez de maintenir un environnement respectueux et inclusif. Soyez courtois, constructif et professionnel dans toutes vos interactions.

## Comment contribuer

### Signaler un bug

1. Vérifiez que le bug n'a pas déjà été signalé dans les [issues](../../issues)
2. Créez une nouvelle issue avec le label `bug`
3. Décrivez le problème de manière détaillée :
   - Comportement attendu
   - Comportement observé
   - Étapes pour reproduire
   - Environnement (OS, version PHP, navigateur)

### Proposer une nouvelle fonctionnalité

1. Ouvrez une issue avec le label `enhancement`
2. Décrivez la fonctionnalité et sa valeur ajoutée
3. Attendez les retours avant de commencer le développement

### Contribuer au code

1. Forkez le dépôt
2. Créez une branche depuis `main` :
```bash
   git checkout -b feature/ma-fonctionnalite
```
3. Effectuez vos modifications
4. Committez en suivant les conventions
5. Poussez vers votre fork
6. Ouvrez une Pull Request

## Processus de Pull Request

### Avant d'ouvrir une PR

- [ ] Votre code respecte les standards définis ci-dessous
- [ ] Tous les tests passent : `composer test`
- [ ] Le code passe les linters : `composer lint`
- [ ] Vous avez testé manuellement vos modifications
- [ ] La documentation est à jour si nécessaire
- [ ] Votre branche est à jour avec `main`

### Ouvrir une Pull Request

1. Utilisez le template de PR fourni (remplissez toutes les sections)
2. Donnez un titre clair et descriptif
3. Liez l'issue concernée (si applicable) : `Fixes #123`
4. Ajoutez des captures d'écran si pertinent
5. Demandez une review

### Revue de code

- Au moins une approbation est requise
- Les commentaires doivent être adressés
- Les conversations doivent être résolues
- Tous les checks CI doivent passer

### Merge

- Utilisez "Squash and merge" pour garder un historique propre
- Le titre du commit final doit suivre la convention de commits
- Supprimez la branche après le merge

## Standards de code

### PHP

- Suivez [PSR-12](https://www.php-fig.org/psr/psr-12/)
- Utilisez le typage strict : `declare(strict_types=1);`
- Documentez avec PHPDoc
- Évitez les fonctions de plus de 50 lignes

Exemple :
```php
<?php
declare(strict_types=1);

namespace CharleBin\Controller;

/**
 * Gère les opérations de paste
 */
class PasteController
{
    /**
     * Crée un nouveau paste
     *
     * @param array $data Données du paste
     * @return string ID du paste créé
     */
    public function create(array $data): string
    {
        // Implémentation
    }
}
```

### JavaScript

- Utilisez ES6+
- Indentation : 2 espaces
- Point-virgules obligatoires
- Utilisez `const` et `let`, pas `var`

### CSS

- Utilisez des classes sémantiques
- Évitez les `!important`
- Organisez par composants

## Convention de commits

Utilisez le format [Conventional Commits](https://www.conventionalcommits.org/) :
```
<type>(<scope>): <description>

[corps optionnel]

[footer optionnel]
```

### Types

- `feat`: Nouvelle fonctionnalité
- `fix`: Correction de bug
- `docs`: Documentation uniquement
- `style`: Formatage, point-virgules manquants, etc.
- `refactor`: Refactoring sans changement de fonctionnalité
- `test`: Ajout ou modification de tests
- `chore`: Maintenance, dépendances, configuration

### Exemples
```
feat(paste): ajouter support du markdown

fix(ui): corriger l'alignement du bouton de copie

docs(readme): mettre à jour les instructions d'installation

test(paste): ajouter tests pour la création de paste
```

## Linters et tests

### Installation des outils
```bash
composer install
```

### Lancer les linters

#### PHP Code Sniffer
```bash
composer phpcs
```

Pour corriger automatiquement certaines erreurs :
```bash
composer phpcbf
```

#### PHPStan (analyse statique)
```bash
composer phpstan
```

#### JavaScript (ESLint)
```bash
npm run lint
```

#### CSS (Stylelint)
```bash
npm run lint:css
```

### Lancer tous les linters
```bash
composer lint
```

### Tests

#### Tests unitaires PHP
```bash
composer test:unit
```

#### Tests d'intégration
```bash
composer test:integration
```

#### Tous les tests
```bash
composer test
```

#### Couverture de code
```bash
composer test:coverage
```

La couverture minimale attendue est de 80%.

## Structure des branches

- `main` : branche de production stable
- `develop` : branche de développement (si applicable)
- `feature/*` : nouvelles fonctionnalités
- `fix/*` : corrections de bugs
- `docs/*` : documentation
- `refactor/*` : refactoring

## Questions ?

N'hésitez pas à ouvrir une issue avec le label `question` si vous avez besoin de clarifications !

Merci de contribuer à CharleBin ! 🚀