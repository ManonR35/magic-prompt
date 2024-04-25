#!/bin/bash
source authentication.sh
source quit.sh
source help.sh
source cd.sh
source hour.sh
source age.sh
source version.sh
source pwd.sh
source rm.sh
source ls.sh
source about.sh
source rmd.sh
source httpget.sh
source open_file.sh
source profil.sh
source send_email.sh
source change_password.sh

authenticate || exit 1

cmd() {
  cmd=$1
  shift

  case "${cmd}" in
    quit | exit ) quit;;
    help ) help;;
    cd ) cd;;
    hour ) hour;;
    age ) age;;
    pwd ) pwd;;
    version | --v | vers ) version;;
    rm ) rm "$@";;
    ls ) list;;
    about ) about;;
    httpget ) httpget_page;;
    open ) open_file;;
    profil ) profil;;
    smtp ) send_email;;
    passw ) change_password;;
    rmd | rmdir ) remove_directory "$@";;
    * ) echo "Commande inconnue: $cmd";;
  esac
}

main() {
  lineCount=1

  while [ 1 ]; do
    date=$(date +%H:%M)
    echo -ne "${date} - [\033[31m${lineCount}\033[m] - \033[33mXzen\033[m ~ ☠️ ~ "
    read string

    cmd $string
    lineCount=$(($lineCount+1))
  done
}

main
