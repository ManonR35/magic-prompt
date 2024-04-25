if [ -f .env ]; then
    source .env
fi

authenticate() {
    read -p "Login: " username
    read -s -p "Password: " password
    echo
    if [[ $username == $LOGIN && $password == $PASSWORD ]]; then
        echo "Authentication successful!"
        return 0
    else
        echo "Authentication failed!"
        return 1
    fi
}
