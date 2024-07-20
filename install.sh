sudo apt update
sudo apt install python3-dev -y
sudo apt install python3-pip -y
sudo python3 -m pip install --upgrade pipx --break-system-packages || sudo python3 -m pip install --upgrade pipx
sudo pipx ensurepath --global --force
sudo pipx install 'glances[all]' --verbose --force --global
sudo cp ./glances.service /etc/systemd/system/
sudo systemctl stop glances.service
sudo systemctl daemon-reload
sudo systemctl enable --now glances.service
