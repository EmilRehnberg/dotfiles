#!/usr/bin/env bash

# TODO: don't use `eval`
source "${HOME}/dotfiles/shell-tools.sh" || echo "$(tput bold)error: shell-tools not found!$(tput sgr0)" >&2

init_dotfiles() {
	local dotfiles_dir=${HOME}/dotfiles
	$dotfiles_dir/run-linking-setup.sh
}

init_xcode() {
	run "xcode-select --install"
	if run "cc --version 2>/dev/null 1>&2"; then
		show "Xcode agreement is accepted."
	else
		show "Xcode agreement not accepted..."
		run "sudo xcodebuild -license" || abort "Xcode agreement NOT accepted"
	fi
	show "Xcode Command Line Tools are properly installed."
}

# xcode;         Ensure that Xcode Command Line Tools are installed
# dotfiles;      Ensure home directory is a git repository for dotfiles
# java;          Ensure that Apple's java for macOS is installed
# brew;          Ensure Homebrew installed and formulas upgraded
# cask;          Ensure Homebrew Casks are installed
# zsh;           Ensure shell is latest version of zsh from Homebrew
# env;           Update envrionment configuration and submodules
# python;        install python; Upgrade/Install Anaconda, pip packages, and conda packages
# go;            Ensure Go packages are installed
# ruby;          install ruby; Upgrade/Install gem packages and rubygems-update package
# osx;           Override macOS \"defaults\" settings and configuration

