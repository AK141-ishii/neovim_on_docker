#!/bin/bash

HOME_PATH=/root
SETTING_PATH=/root/.setting

# bash
cp ${SETTING_PATH}/bashrc ${HOME_PATH}/.bashrc
cp ${SETTING_PATH}/bash_aliases ${HOME_PATH}/.bash_aliases
# git
cp -r ${SETTING_PATH}/gitplugin ${HOME_PATH}/.gitplugin
