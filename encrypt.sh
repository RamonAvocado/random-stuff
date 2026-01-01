#/bin/bash

folder=$1
password_file=$(./save-password.sh $folder)

for file in $folder*;
do
	ansible-vault encrypt $file --vault-password-file $password_file
done
