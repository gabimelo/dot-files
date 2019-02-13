git config --global user.email ""
git config --global user.name "Gabriela Melo"

# Assumes SSH key does not exist yet
ssh-keygen -t rsa -b 4096 -C "gabimelo10@gmail.com"

if ! eval $(ssh-agent -s) | grep -q 'Agent pid'; then
   echo "SSH Agent seems not to be running, please verify";
   exit
fi

ssh-add ~/.ssh/id_rsa

cat ~/.ssh/id_rsa.pub
