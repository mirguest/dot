#!/bin/bash

# setup for my config

DOTDIR=${HOME}/dot

function exported-config() {
    echo screenrc
    echo emacs.d
}

function echoeval() {
    echo EXECUTING: $*
    $*
}

function setup-config() {
    local config=$1; shift
    [ -n "$config" ] || return
    local from=$DOTDIR/$config
    local to=${HOME}/.${config} # add a dot

    [ ! -e "$to" ] || return
    
    echoeval ln -s "$from" "$to"
}

# create link to $HOME
for config in $(exported-config);
do
    setup-config $config
done
