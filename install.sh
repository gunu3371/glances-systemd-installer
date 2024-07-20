sudo apt update
sudo apt install pipx
pipx ensurepath
sudo pipx ensurepath --global
pipx install 'glances[all]'
cp ./glances.service /etc/systemd/system/
sudo systemctl enable --now glances.service
