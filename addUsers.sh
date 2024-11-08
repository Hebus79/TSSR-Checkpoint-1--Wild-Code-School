#!/bin/bash

echo "Nombre d'arguments $#"
echo "utilisateurs à créer : $@"

#Déclaration variables

let i=0


if [ $# -eq 0 ] ; then


    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit


else

    while [ $i -le $# ]; do 

    echo "Création utilisateur $1"
    sleep 2  

        
        if getent passwd $1 > /dev/null 2>&1; then
            echo "L'utilisateur $1 existe déjà."
	        sleep 2
            "L'utilisateur $1 existe déjà"
            sleep 2
        
        else
            sudo -S useradd -m $1
            echo "Utilisateur $1 créé."
	        sleep 2
            echo "Vérification si l'utilisateur à bien été créé"
            getent passwd $1
            # "Vérification si l'utilisateur à bien été créé"
            # if getent passwd $1 > /dev/null 2>&0; then 
            # echo "Erreur à la création de l'utilisateur $1"
            # fi
        fi

        let i=$i+1
        
        shift


    done


fi


echo "Au revoir"
