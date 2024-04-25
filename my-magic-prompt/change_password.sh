change_password() {
  echo "Veuillez entrer le nouveau mot de passe : "
  read -s new_password
  echo "Confirmez le nouveau mot de passe : "
  read -s confirm_password

  if [ "$new_password" != "$confirm_password" ]; then
    echo "Les mots de passe ne correspondent pas. Veuillez réessayer."
    return 1
  fi

  sed -i "s/^PASSWORD=.*/PASSWORD=\"$new_password\"/" .env

  echo "Le mot de passe a été changé avec succès."
}
