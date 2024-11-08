#!bin/bash

if [ "$#" -ne 1 ] ; then
echo "Il manque les noms d'utilisateurs en argument - Fin du script"
exit

else creation_nouvel_utilisateur

fi

function creation_nouvel_utilisateur() {
        
        if $1 "getent passwd $1 > /dev/null 2>&1"; then
            echo "L'utilisateur $1 existe déjà."
	        sleep 2
            "L'utilisateur $1 existe déjà"
            return 1
        else
            $1 "sudo -S useradd -m $1"
            echo "Utilisateur $1 créé."
	        sleep 2
            return 0
        fi
    }

echo "Au revoir"
