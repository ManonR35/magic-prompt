httpget_page() {
  echo "Veuillez entrer l'URL de la page web à télécharger : "
  read url
  echo "Veuillez entrer le nom du fichier de destination : "
  read filename

  curl -o "$filename" "$url"

  if [ $? -eq 0 ]; then
    echo "Le contenu de la page web a été téléchargé avec succès dans $filename."
  else
    echo "Une erreur s'est produite lors du téléchargement de la page web."
  fi
}