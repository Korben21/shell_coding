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
    #Définition du nombre de conteneurs
    nb_machine=1
    [ "$2" != "" ] && nb_machine=$2
    #Création des conteneurs
    echo "Début de la création du conteneur"
    for i in $(seq 1 $nb_machine);do
      docker run -tid --name $USER-alpine_$i alpine:latest
      echo "Conteneur $USER-alpine_$i créé"
    done
    echo "${nb_machine} Machines ont été créés"
# Si option --drop
elif [ "$1" == "--drop" ];then

    echo "Début de la supression"
    docker rm -f $(docker ps -a | grep $USER-alpine | awk '{print $1}')
    echo "Fin de la suppression"

    docker rm -f $USER-alpine
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
