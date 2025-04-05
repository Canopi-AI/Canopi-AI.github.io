# Canopi-AI.github.io

Site Jekyll hébergé avec **GitHub Pages** et utilisable en local avec **Docker**.

## Prérequis

[Docker](https://www.docker.com/get-started) & [Docker Compose](https://docs.docker.com/compose/install/)

## Cloner et lancer le projet

```sh
git clone https://github.com/Canopi-AI/Canopi-AI.github.io.git
```

Le projet est lancé avec docker-compose :

```sh
docker-compose up --build -d
```

Une fois lancé, accès au site en local : http://localhost:4000

## Développement en local

Le dossier local du projet est monté dans le conteneur docker. Lorsqu'il est lancé, toute modification des fichiers est immédiatement appliquée, car Jekyll les surveille avec --watch. Jekyll génère de plus automatiquement un dossier `_site/` pour stocker le HTML final qui sert à l'affichage local, et n'a pas besoin d'être versionné.

Pour ajouter des plugins, il faut mettre à jour le Gemfile

```ruby
gem "some_plugin"
```

Lancer l’installation dans Docker

```sh
docker-compose run --rm jekyll bundle install
```

Et redémarrer le serveur avec `docker-compose up --build -d`.
