#!/bin/bash

generate_password() {
  local length=$1  
  tr -dc 'A-Za-z0-9!@#$%^&*()_+{}|:<>?' </dev/urandom | head -c $length
}

read -p "сколько паролей вам надо?: " num_passwords
read -p "длина пароля: " password_length
output_file="passwords.txt"

for ((i=0; i<$num_passwords; i++)); do
  password=$(generate_password $password_length)
  echo $password >> $output_file
done

