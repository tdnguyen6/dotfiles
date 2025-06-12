sudo dnf update
sudo dnf install micro zsh git rbw curl wget cargo
cargo install eza
sudo dnf copr enable lihaohong/chezmoi
sudo dnf install chezmoi

mkdir -p ~/.ssh
sudo chmod 700 -vR ~/.ssh
sudo chmod 644 -vR ~/.ssh/**/**/*.pub
sudo chmod 600 -vR ~/.ssh/**/**/id_rsa
sudo chmod 600 -vR ~/.ssh/config

sudo passwd
sudo passwd $USER
echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)
