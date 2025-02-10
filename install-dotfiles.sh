# Copy over all config files
cp files/.zshrc ~/.zshrc
cp files/.tmux.conf ~/.tmux.conf
cp files/.vimrc ~/.vimrc
cp files/.gitconfig ~/.gitconfig
cp files/.gitignore ~/.gitignore
cp files/git_prompt.sh ~/.git_prompt
cp files/flake8 ~/flake8

mkdir -p ~/.vim/pack/git-plugins/start/
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale
git clone --depth 1 https://github.com/embear/vim-localvimrc.git ~/.vim/pack/git-plugins/start/vim-localvimrc
