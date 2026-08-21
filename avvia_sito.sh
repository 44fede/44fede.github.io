#!/bin/bash
echo "Configurazione e avvio del blog con Podman..."

# Comando diretto: inserisce il percorso in automatico senza errori di variabili
podman run --rm \
  -v "$(pwd):/srv/jekyll:Z" \
  -p 4000:4000 \
  -it jekyll/jekyll:4 \
  bash -c "bundle install && bundle exec jekyll serve --watch --force_polling --host 0.0.0.0 --baseurl=''"

