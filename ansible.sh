component=$1

rm -f ~/*.json
ansible-playbook get-secrets.yml -e vault_token=$vault_token -e env=$env -e role_name=$component
ansible-playbook -i $component-$env.rdevops6a.online, -e env=$env -e role_name=$component expense.yml -e '@~/secrets.json'
rm -f ~/*.json
