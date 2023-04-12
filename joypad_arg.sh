#!/bin/bash

# Vérification des arguments
if [ -z "$1" ]; then
  echo "Veuillez saisir l'adresse MAC de votre manette Bluetooth en argument."
  exit 1
else
  manette="$1"
fi

# Connexion automatique de la manette
echo -e "power on\nconnect $manette\nquit" | bluetoothctl
