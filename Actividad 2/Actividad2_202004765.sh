#!/bin/bash

read GITHUB_USER

current_date=$(date +%Y-%m-%d)

IDUSER=$(curl -s "https://api.github.com/users/${GITHUB_USER}" | jq -r '.id')
DATECUSER=$(curl -s "https://api.github.com/users/${GITHUB_USER}" | jq -r '.created_at')

echo "Hola ${GITHUB_USER}. User ID: ${IDUSER}. Cuenta creada el: ${DATECUSER}"

mkdir -p temp/$current_date
echo "Hola ${GITHUB_USER}. User ID: ${IDUSER}. Cuenta creada el: ${DATECUSER}" >> temp/$current_date/saludos.log
echo "Log Almacenado!"