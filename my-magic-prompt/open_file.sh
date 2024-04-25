open_file() {
  echo "Veuillez entrer le nom du fichier à ouvrir : "
  read filename

  vim -c "norm! G" -c "startinsert" "$filename"
}