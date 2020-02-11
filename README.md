# My dotfiles

```
git clone --recurse-submodules https://github.com/bizdak/dotfiles.git
cd dotfiles
ln -s `pwd`/vimrc ~/.vimrc
ln -s `pwd`/vim ~/.vim
```

To update pathogen.vim:
```
curl -LSso vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
The following were added for vim:
```

## tmux configuration
Ensure zsh is installed
```
sudo apt install zsh
```
Also configure oh-my-zsh from https://ohmyz.sh/
```
sh -c "$(curl -fsSL
https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Then link ~/.tmux.conf
```
ln -s `pwd`/tmux.conf ~/.tmux.conf
```

