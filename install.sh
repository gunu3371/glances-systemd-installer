sudo apt update
sudo apt install python3-dev -y
sudo apt install python3-pip -y
python3 -m pip install --upgrade pipx --break-system-packages
sudo pipx ensurepath --global --force
sudo pipx install 'glances[all]' --verbose
sudo cp ./glances.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now glances.service
