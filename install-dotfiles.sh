# Load .bash_custom in .bashrc if it isn't already
grep '.bash_custom' ~/.bashrc > /dev/null
if [ $? -ne 0 ]; then
    echo 'source ~/.bash_custom' >> ~/.bashrc
fi

# Copy over all config files
cp files/bash_custom.sh ~/.bash_custom
cp files/.tmux.conf ~/.tmux.conf
cp files/.vimrc ~/.vimrc
cp files/.gitconfig ~/.gitconfig
cp files/.gitignore ~/.gitignore
cp files/git_prompt.sh ~/.git_prompt
cp files/flake8 ~/flake8

mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.local/share/nvim/site/pack/git-plugins/start/ale
