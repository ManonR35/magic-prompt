send_email() {
  echo "Veuillez entrer l'adresse e-mail du destinataire : "
  read recipient
  echo "Veuillez entrer le sujet du message : "
  read subject
  echo "Veuillez entrer le corps du message (appuyez sur Ctrl+D pour terminer) : "
  message=$(cat)

  # Envoi du mail
  echo "$message" | mail -s "$subject" "$recipient"

  if [ $? -eq 0 ]; then
    echo "L'e-mail a été envoyé avec succès à $recipient."
  else
    echo "Une erreur s'est produite lors de l'envoi de l'e-mail."
  fi
}
