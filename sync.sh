#! /bin/bash

# backup
time=$(date "+%Y%m%d.%H%M%S")
echo "User home directory: ${HOME}"
echo "Backup previous config"
lvim_path=${HOME}/.config/lvim
mv ${lvim_path}/config.lua ${lvim_path}/config.lua.backup."${time}"

# update
echo "Updating config"
shell_folder=$(cd "$(dirname "$0")";pwd)
cp ${shell_folder}/config.lua ${lvim_path}/config.lua


echo "Successfully sync config.lua at ${lvim_path}/config.lua"
echo "Backup can be found in ${lvim_path}/config.lua.backup.${time}"
