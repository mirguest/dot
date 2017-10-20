#!/bin/bash

# setup for my config

DOTDIR=${HOME}/dot

function exported-config() {
    echo screenrc
}

function setup-config() {
    local config=$1; shift
    [ -n "$config" ] || return
    local from=$DOTDIR/$config
    local to=${HOME}/.${config} # add a dot

    [ ! -f "$to" ] || return
    
    ln -s "$from" "$to"
}

# create link to $HOME
for config in $(exported-config);
do
    setup-config $config
done
