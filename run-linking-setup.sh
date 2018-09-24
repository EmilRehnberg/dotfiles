#!/usr/bin/env bash

dotfiles_dir=${HOME}/dotfiles
home_dir_dotfiles_dir=${dotfiles_dir}/to-home-dir

rm_old_dotfile_symlink() {
	local dotfile=$1
	if [[ -L ${HOME}/${dotfile} ]] ; then # test: TRUE if file exist and is symbolic link
		echo "Deleting existing symbolic link ${dotfile}"
		rm ${HOME}/${dotfile}
	fi
}

backup_existing_dotfile() {
	local dotfile=$1
	local old_dotfiles_dir=${HOME}/.dotfiles_old

	if [[ -e ${HOME}/${dotfile} ]] ; then # test: TRUE if file exists (symlinks are FALSE)
		if [[ ! -d ${HOME}/${old_dotfiles_dir} ]] ; then # create dir if it doesn't exist
			mkdir -p ${old_dotfiles_dir}
		fi

		echo "Moving ${dotfile} to ${old_dotfiles_dir}"
		mv ${HOME}/${dotfile} ${old_dotfiles_dir}
	fi
}

# remove old links or move existing files to old directory
clean_old_link() {
	local dotfile=$1
	backup_existing_dotfile ${dotfile}
	rm_old_dotfile_symlink ${dotfile}
}

create_link() {
	local dotfile=$1
	echo "Creating symbolic link to ${dotfile} in home directory."
	ln -s ${home_dir_dotfiles_dir}/${dotfile} ${HOME}/${dotfile}
}

cd ${home_dir_dotfiles_dir} # for the for-loop to get the correct values
for dotfile in .*; do
	clean_old_link ${dotfile}
	create_link ${dotfile}
done

link_custom_tmux_oh_my_zsh_plugin() {
	local custom_tmux_dir=${HOME}/.oh-my-zsh/custom/plugins/tmux

	if [[ -L ${custom_tmux_dir} ]]; then
		rm ${custom_tmux_dir}
	fi

	if [[ -d ${HOME}/.oh-my-zsh ]]; then
		ln -s ${dotfiles_dir}/oh-my-zsh/custom/plugins/tmux ${custom_tmux_dir}
	fi
}

link_custom_tmux_oh_my_zsh_plugin
