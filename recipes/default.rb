#
# Cookbook Name:: cb-base-exmaple
# Recipe:: default
#
# Copyright 2016, EZtheOG
#
# All rights reserved - Do Not Redistribute
#

log "Setting up Chef and Ohai"
include_recipe "cb-base::chef"

log "Setting resolv.conf"
include_recipe "cb-base::dns"

log "Setting Yum Repos"
include_recipe "cb-base::yum"

log "Setting Services"
include_recipe "cb-base::services"

log "Creating Directories and Files"
include_recipe "cb-base::files"

log "Installing Packages"
include_recipe "cb-base::packages"

log "Creating Admins"
include_recipe "cb-base::users-admins"

log "Creating Sudoers File"
include_recipe "cb-base::sudoers"

log "Setting NTP"
include_recipe "cb-base::ntp"

log "Setting up Logrotate files"
include_recipe "cb-base::logrotate"

log "Removing Users"
include_recipe "cb-base::users-remove"