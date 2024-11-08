#!/bin/bash

echo "Nombre d'arguments $#"
echo "utilisateurs à créer : $@"

#Déclaration variables

i=1

function creation_nouvel_utilisateur() {

    while [ $i -le $# ]; do 

        
        if getent passwd $i > /dev/null 2>&1; then
            echo "L'utilisateur $i existe déjà."
	        sleep 2
            "L'utilisateur $i existe déjà"
            return 1
        else
            sudo -S useradd -m $i
            echo "Utilisateur $i créé."
	        sleep 2
            return 0
        fi

        let $[ i+=1 ]
        

    done

    }

# Teste si le script à des arguments

if [ "$#" -eq "0" ] ; then


echo "Il manque les noms d'utilisateurs en argument - Fin du script"
exit


fi

creation_nouvel_utilisateur


#sortie du script après création des utilisateurs

echo "Au revoir"
