remove_directory() {
    if [ -z "$1" ]; then
        echo "Error: No directory specified"
    elif [ -d "$1" ]; then 
        command rmdir -p "$1"
        echo "Le dossier '$1' a été supprimé avec succès."
    else
        echo "Erreur: Impossible de supprimer le dossier '$1' ou il n'existe pas."
    fi
}