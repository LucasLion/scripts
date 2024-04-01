#!/bin/bash

# Chemin vers le fichier audio
AUDIO_FILE="/home/noil/scripts/bruit-blanc.mp3"

# Vérifier si la musique est en cours de lecture
if pgrep mpv >/dev/null 2>&1; then
    # Si la musique est en cours de lecture, arrêtez-la
    pkill mpv
    echo "Musique arrêtée."
else
    # Si la musique n'est pas en cours de lecture, lancez-la en arrière-plan
    mpv --no-video --loop=inf "$AUDIO_FILE" &
    echo "Musique lancée."
fi

