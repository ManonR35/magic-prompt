rm() {
    if [ -z "$1" ]; then
        echo "Erreur: Aucun fichier spécifié"
        return 1
    elif [ -f "$1" ]; then 
        command rm "$1"
        echo "Le fichier '$1' a été supprimé avec succès."
    else
        echo "Erreur: Impossible de supprimer le fichier '$1' ou il n'existe pas."
    fi
}