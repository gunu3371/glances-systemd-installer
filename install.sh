sudo apt update
sudo apt install python3-dev -y
sudo apt install pipx -y
sudo pipx ensurepath
pipx install 'glances[all]' --verbose
cp ./glances.service /etc/systemd/system/
systemctl daemon-reload
sudo systemctl enable --now glances.service
