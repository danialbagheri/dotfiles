## TMUX


To set up tmux set the following link
```bash
ln -s ~/dev-dotfiles/tmux/tmux.conf ~/.tmux.conf
```

once link is made, inside tmux run:

```bash
tmux source-file ~/.tmux.conf
```

now to install the plugins press prefix (ctrl + b ) and `I`.


## NVIM config

Firtly make a link to the config files

```bash
ln -s ~/dev-dotfiles/nvim ~/.configs/
```
## zsh profile 

some zsh useful configs
```bash
# you need fzf to be installed
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```
## scripts

to use the scrpts we could put in the `~/.local/bin` folder
```bash
mkdir -p ~/.local/bin
ln -s ~/dot-files/scripts/tmux-sessionizer ~/.local/bin/tmux-sessionizer
# or 
cp ~/dot-files/scripts/tmux-sessionizer ~/.local/bin/tmux-sessionizer
# finally
chmod +x ~/.local/bin/tmux-sessionizer
```

then we need to put our `.local/bin` in the path

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc

```

now you can do ctrl + f when you are inside a tmux session to mount anything that is in the path of tmux-sessionizer. Customise the tmux sesssionizer to your needs. 
bashas you need.

> Note: tmux-sessioniser uses ftz to search for the files, so you need to have fzf installed.




