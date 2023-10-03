#!/bin/bash

git clone git@github.com:rtipe/GameEngine.git
cd GameEngine
find . -type f -name "*.cpp" -exec rm -f {} \;
rm -rf CMakeLists.txt
cd ..

lib_a="https://github.com/rtipe/GameEngine/releases/download/v0.0.1/libUnitiGameEngine.a"
lib_lib="https://github.com/rtipe/GameEngine/releases/download/v0.0.1/UnitiGameEngine.lib"

curl -LJO $lib_a
curl -LJO $lib_lib

if [ $? -eq 0 ]; then
  echo "Téléchargement réussi."
else
  echo "Échec du téléchargement."
  exit 1
fi

echo "Installation des fichiers .a et .lib terminée."

# Demander le nom du projet à l'utilisateur
echo "Quel nom de projet voulez-vous ?"
read project_name

# Demander le titre de la fenêtre à l'utilisateur
echo "Quel est le titre de la fenêtre ?"
read window_title

# Demander la largeur de la fenêtre à l'utilisateur (avec vérification)
while true; do
    echo "Quelle largeur pour la fenêtre ? (entrez un chiffre)"
    read window_width
    if [[ $window_width =~ ^[0-9]+$ ]]; then
        break
    else
        echo "Veuillez entrer une valeur numérique valide."
    fi
done

# Demander la hauteur de la fenêtre à l'utilisateur (avec vérification)
while true; do
    echo "Quelle hauteur pour la fenêtre ? (entrez un chiffre)"
    read window_height
    if [[ $window_height =~ ^[0-9]+$ ]]; then
        break
    else
        echo "Veuillez entrer une valeur numérique valide."
    fi
done

# Demander le FPS à l'utilisateur
echo "Quel FPS voulez-vous ?"
read fps


# Mettre à jour le fichier test.json avec les réponses de l'utilisateur
cat <<EOL > "json/projectInfos.json"
{
    "name": "$project_name",
    "directoryScenePath": "../json/scenes/",
    "startScene": "test.json",
    "globalScene": "global.json",
    "windowInfos": {
        "title": "$window_title",
        "width": $window_width,
        "height": $window_height,
        "fps": $fps
    }
}
EOL

# Afficher un message de confirmation
echo "Le fichier test.json a été mis à jour avec les informations fournies."

echo "Build du projet en cours..."

# Créer le dossier build
mkdir build

# Se déplacer dans le dossier build
cd build

# Générer le projet
cmake ..

# Compiler le projet
make

# Move la source

mv ./bin/RootGameProject ../

# Afficher un message de confirmation

echo "Build terminé."

# Se déplacer dans le dossier bin

# Vous pouvez ajouter d'autres étapes de configuration du projet ici
