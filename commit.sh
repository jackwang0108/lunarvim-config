#!/bin/bash

# backup
echo "User home directory: ${HOME}"
echo "Backup previous config"

time=$(date "+%Y%m%d.%H%M%S")
shell_folder=$(cd "$(dirname "$0")";pwd)
mv ${shell_folder}/config.lua ${shell_folder}/config.lua.backup."${time}"

# commit
lvim_path=${HOME}/.config/lvim
echo "Commiting local config"
cp ${lvim_path}/config.lua ${shell_folder}/config.lua


echo "Successfully commit config.lua at ${shell_folder}/config.lua"
