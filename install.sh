echo "apt update..."
sudo apt -qq update
echo "✔ update done!"

sudo apt -qq install zsh git
echo "✔ base packeges are installed"

git pull
echo "✔ dotfiles are up to date"

ln -sf $(pwd)/bashrc ~/.bashrc
echo "✔ zsh as default shell"

# install oh-my-zsh
[ -d ~/.oh-my-zsh ] || git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
[ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] || git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# synlink oh-my-zsh theme
mkdir -p ~/.oh-my-zsh && mkdir -p ~/.oh-my-zsh/themes
ln -sf $(pwd)/.oh-my-zsh/themes/* ~/.oh-my-zsh/themes
echo "✔ oh my zsh configured!"

ln -sf $(pwd)/.zshrc ~/.zshrc
echo "✔ .zshrc symlinked"