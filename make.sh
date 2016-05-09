#!/bin/bash

# Configure the default image for OpenWRT in Studentenwerk
make image PROFILE=TLWR741 PACKAGES="luci wpad privoxy -wpad-mini" FILES="/home/jak/Projects/Temporary/openwrt/files/"
