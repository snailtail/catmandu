#!/bin/bash

apt-get update;
apt-get -qq install cpanminus build-essential libexpat1-dev libssl-dev libxml2-dev libxslt1-dev libgdbm-dev libmodule-install-perl;
cpanm Catmandu Catmandu::MARC Catmandu::XLS;
