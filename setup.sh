set -v

mkdir -p ~/.config/ghostty
cp ./ghostty/config ~/.config/ghostty/config

mkdir ~/.config
cp -r ./nvim ~/.config/nvim

cp ./tmux/tmux.conf ~/.tmux.conf

cp ./zsh/zshrc ~/.zshrc

cp ./emacs ~/.emacs.d
