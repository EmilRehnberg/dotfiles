#!/bin/bash
# 目的：dotfilesリンクを作れています。

dotfiles_dir=~/dotfiles
old_dotfiles_dir=~/.dotfiles_old
dotfiles="bin config git inputrc mpv Rprofile shinshutsu.yml taskrc tmux.conf vlcrc zshrc"
# link the custom tmux oh-my-zsh plugin (handles colors correctly)
ln -s ${dotfiles_dir}/oh-my-zsh/custom/plugins/tmux ~/.oh-my-zsh/custom/plugins/tmux

echo "Creating ${old_dotfiles_dir} for backup of any existing dotfiles in ~"
mkdir -p ${old_dotfiles_dir}

mkdir -p ${dotfiles_dir}
cd

echo "Moving any existing dotfiles from ~ to ${old_dotfiles_dir}"
for dotfile in ${dotfiles}; do
  dotfile_path=".${dotfile}"
  if [ -e ${dotfile_path} ] ; then
    if [ -h ${dotfile_path} ] ; then
      echo "Deleting symbolic link ${dotfile_path}"
      rm ${dotfile_path}
    else
      echo "Moving ${dotfile_path} to ${old_dotfiles_dir}"
      mv ${dotfile_path} ${old_dotfiles_dir}
    fi
  fi
  echo "Creating symbolic link to ${dotfile} in home directory."
  ln -s ${dotfiles_dir}/${dotfile} ${dotfile_path}
done
