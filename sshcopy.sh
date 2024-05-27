#!/bin/bash

# Путь к вашему открытому SSH ключу
SSH_KEY_PATH="~/.ssh/id_rsa.pub"

# Список целевых хостов
#HOSTS=("host1" "host2" "host3")
HOSTS=$(cat hosts | grep ssh | awk '{print $2}' | sed -r 's/^[^10.10]+//')


# Передача открытого SSH ключа на целевые машины
for host in "${HOSTS[@]}"; do
  ssh-copy-id -i $SSH_KEY_PATH $host
done


#sshpass -p 'P@ssw0rd' ssh-copy-id -f -i ~/.ssh/id_rsa.pub -o "StrictHostKeyChecking=no" user@${HOSTS[@]
