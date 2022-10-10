#!/bin/bash

#####################################################################
#
# Description : Déploiement à la volée de conteneur docker
#
# Auteur      : Stephen CASSE
#
# Date        : 10/10/2022
#
# Version     : v1.0
#
#####################################################################

# Si option --create
if [ "$1" == "--create" ];then

    echo ""
    echo "notre option est --create"
    echo ""
# Si option --drop
elif [ "$1" == "--drop" ];then

    echo ""
    echo "notre option est --drop"
    echo ""

# Si option --start
elif [ "$1" == "--start" ];then

     echo ""
     echo "notre option est --start"
     echo ""

 # Si option --ansible
elif [ "$1" == "--ansible" ];then

      echo ""
      echo "notre option est --ansible"
      echo ""

 # Si option --infos
elif [ "$1" == "--infos" ];then

      echo ""
      echo "notre option est --infos"
      echo ""

# Si aucune option affichage de l'aide
else

echo "

Options :
   - --create : Lancer des conteneurs

   - --drop : supprimer les conteneurs créer par le deploy.sh

   - --infos : caractéristiques des conteneurs (ip, nom, user...)

   - --start : redémarrage des conteneurs

   - --ansible : déploiement arborescence ansible

"
fi
