# .dotfiles
My configuration files.

For start from scratch in main computer I used
```bash
git init --bare $HOME/.cfg
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

For config at others computers:
```bash
echo ".cfg" >> .gitignore
git clone --bare https://github.com/pmat0s/.dotfiles $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
```

If want to backup original files:
```bash
mkdir -p .config-backup && \
dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}

dotfiles checkout

dotfiles config --local status.showUntrackedFiles no

```




---
*Reference:*

https://www.atlassian.com/git/tutorials/dotfiles

