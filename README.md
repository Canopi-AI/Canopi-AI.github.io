# Canopi-AI.github.io

Site [Jekyll](https://jekyllrb.com/docs/) hébergé avec [GitHub Pages](https://pages.github.com/) et utilisable en local avec [Docker](https://www.docker.com/).

## Prérequis

[Docker](https://www.docker.com/get-started) & [Docker Compose](https://docs.docker.com/compose/install/)

## Cloner et lancer le projet

```sh
git clone https://github.com/Canopi-AI/Canopi-AI.github.io.git
```

Le projet est lancé avec docker-compose :

```sh
docker compose up --build -d
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
docker compose run --rm jekyll bundle install
```

Et redémarrer le serveur avec `docker compose up --build -d`.

## Structure des fichiers

Les éléments nécessaires à [Jekyll](https://jekyllrb.com/docs/) sont structurés ainsi :

```
_data/                      Données/contenu des pages
_includes/                  Fragments HTML réutilisables
_layouts/                   Templates de pages
_pages/                     Pages
_posts/                     Posts apparaissant dans les articles
_sass/                      Fichiers scss pour le style

assets/
├── css/
│   ├── styles.scss         Fichier principal pour le style en scss
├── images/                 Logos et illustrations

_site/                      Dossier généré automatiquement (pas versionné)
_config.yml                 Fichier de config
Gemfile                     Dépendances Ruby
```
