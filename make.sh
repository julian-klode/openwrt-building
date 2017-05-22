#!/bin/bash

# Configure the default image for OpenWRT in Studentenwerk
make image PROFILE=tl-wr741nd-v4 PACKAGES="wpad privoxy sqm-scripts -wpad-mini" FILES="/home/jak/Projects/Stable/openwrt/files/"

# Image for the DIR505A1
make image PROFILE=DIR505A1 PACKAGES="luci luci-app-sqm wpad -wpad-mini" FILES="/home/jak/Projects/Stable/openwrt/files/"
