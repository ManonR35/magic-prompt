age() {
  read -p "Entrez votre âge : " age

  if [ $age -ge 18 ]; then
    echo "Vous êtes majeur."
  else
    echo "Vous êtes mineur."
  fi
}