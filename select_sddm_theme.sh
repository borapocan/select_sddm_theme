#!/bin/bash

THEMES=/usr/share/sddm/themes;

CONF_FILE=/etc/sddm.conf.d/kde_settings.conf;

chosen=$(ls $THEMES | gum choose);

match="Current=$chosen";

#echo $match;

theme=$(grep -w "Current" $CONF_FILE);

#echo "$theme";

sudo sed -i "s/$theme/$match/" $CONF_FILE;

echo "SDDM Theme successfully changed.";
