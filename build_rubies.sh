#!/bin/sh

#set -e

grep '^libruby\.so' common/shlibs


xgensum -i srcpkgs/rubies-ruby27/template
xgensum -i srcpkgs/rubies-ruby30/template

./xbps-src -j4 pkg rubies-ruby30
./xbps-src -j4 pkg rubies-ruby27
./xbps-src -j4 -a armv7l pkg rubies-ruby30
./xbps-src -j4 -a armv7l pkg rubies-ruby27

git restore common/shlibs
