## Réponses au Quizz TSSR Checkpoint



1) Donne une ligne de commande bash qui permet de lister la liste des utilisateurs d'un système Linux :

cat /etc/passwd

ou

cut -d: -f1 /etc/passwd


2) Quelle commande bash permet de changer les droits du fichier myfile en rwxr—r-- ?

chmod 744 myfile


3) Comment faire pour que les fichiers pdf d'un dépôt local git ne soient pas pris en compte lors d'un git push ?

Pour indiquer à Git qu'il doit ignorer certains fichiers lors d'un git push, il est nécessaire de créer et maintenir un fichier nommé ".gitignore" dans le répertoire du projet.

4) Quelles commandes git utiliser pour fusionner les branches main et test_valide ?

git checkout main

git merge test_valide


5) Donne la(les) ligne(s) de commande(s) bash pour afficher le texte suivant : taper echo et mettre le texte entre des apostrophes

echo 'Malgré le prix élevé de 100$, il a dit "Bonjour !" au vendeur :

- "Bonjour est-ce que ce clavier fonctionne bien ?"
  
- "Evidemment ! On peut tout écrire avec, que ce soit des pipe | ou bien des backslash \\ !"
  
- "Même des tildes ~ ?"
  
- "Evidemment !"'


6) Quelle commande te permet de mettre en avant le processus gedit ?

ps -ef | grep gedit


7) Quels matériels réseaux sont sur la couche 2 et la couche 3 du modèle OSI ? Donne leurs spécificités.

les commutateurs sont sur la couche 2, ils fonctionnent avec les adresses MAC
les routeurs sont sur la couche 3, ils fonctionnent avec les adresses IP

8) Quels sont les équivalent PowerShell des commandes bash cd, cp, mkdir, ls.

   cd => set-location
   
   cp => copy-item
   
   mkdir => New-Item
   
   ls => Get-ChildItem
   

10)  Dans la trame ethernet, qu'est-ce que le payload ?

Le payload est le bloc d'octets qui contient les DATA (données IP, ARP, ...)
  
   
10. Pourquoi les classes IP sont remplacées par le CIDR ?


    le CIDR permet d'organiser facilement les adresses IP dans des sous-réseaux



