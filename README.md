# CharleBin

CharleBin est un fork éducatif de [PrivateBin](https://github.com/PrivateBin/PrivateBin), conçu spécifiquement pour permettre aux étudiants d'apprendre à utiliser GitHub et les workflows de collaboration open source.

## À propos du projet

CharleBin est une application de partage de texte chiffré, basée sur PrivateBin. Ce projet sert de plateforme d'apprentissage pour la gestion de versions, les pull requests, et les bonnes pratiques de développement collaboratif.

### Fonctionnalités principales

- Partage de texte avec chiffrement côté client
- Destruction automatique après lecture
- Protection par mot de passe optionnelle
- Support de la coloration syntaxique
- Interface responsive

## Prérequis

- PHP 7.4 ou supérieur
- Extensions PHP requises :
  - gd (pour les CAPTCHAs)
  - json
  - mbstring
  - openssl
- Serveur web (Apache, Nginx, ou autre)
- Composer (pour la gestion des dépendances)

## Installation en local

### 1. Cloner le dépôt
```bash
git clone https://github.com/votre-username/CharleBin.git
cd CharleBin
```

### 2. Installer les dépendances
```bash
composer install
```

### 3. Configuration

Copiez le fichier de configuration par défaut :
```bash
cp cfg/conf.sample.php cfg/conf.php
```

Modifiez `cfg/conf.php` selon vos besoins.

### 4. Permissions

Assurez-vous que le serveur web a les droits d'écriture sur les dossiers suivants :
```bash
chmod 750 data
chmod 750 tmp
```

### 5. Lancer le serveur

Avec le serveur PHP intégré (développement uniquement) :
```bash
php -S localhost:8000
```

Accédez à l'application via `http://localhost:8000`

## Tests

### Lancer les tests unitaires
```bash
composer test
```

### Lancer les linters
```bash
composer lint
```

## Compilation et déploiement

### Build de production
```bash
composer build
```

Les fichiers compilés seront disponibles dans le dossier `dist/`.

### Déploiement

1. Transférez les fichiers vers votre serveur
2. Configurez votre serveur web pour pointer vers le dossier racine
3. Assurez-vous que les permissions sont correctement définies
4. Configurez HTTPS (recommandé)

## Documentation

Pour plus d'informations sur l'utilisation et la configuration, consultez :

- [Documentation PrivateBin](https://github.com/PrivateBin/PrivateBin/wiki)
- [Guide de contribution](CONTRIBUTING.md)

## Contribuer

Ce projet est destiné à l'apprentissage. Les contributions sont les bienvenues ! Consultez notre [guide de contribution](CONTRIBUTING.md) pour commencer.

## Licence

CharleBin hérite de la licence de PrivateBin : [Zlib/libpng License](LICENSE.md)

## Crédits

- Projet original : [PrivateBin](https://github.com/PrivateBin/PrivateBin)
- Fork éducatif maintenu dans le cadre d'un cours sur GitHub

## Support

Pour toute question concernant le projet éducatif CharleBin, ouvrez une issue sur GitHub.