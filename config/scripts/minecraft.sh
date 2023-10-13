#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

rpm-ostree install -y java-17-openjdk

mkdir minecraftforge && \
cd minecraftforge && \
wget "https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.2.0/forge-1.20.1-47.2.0-mdk.zip" -O temp.zip && \
unzip temp.zip && \
rm temp.zip
cd ~