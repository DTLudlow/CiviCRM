#! /bin/bash

# Get apt's list of packages
apt -yq update
# Install wget, unzip and tar, in order to obtain and extract the CiviCRM files
apt -yq install wget unzip tar

#mkdir /var/www/html/wp-content/plugins/

# Obtain and unpack the main CiviCRM files
cd /var/www/html/wp-content/plugins/ && wget https://download.civicrm.org/civicrm-5.64.0-wordpress.zip
unzip civicrm-5.64.0-wordpress.zip
# Obtain and unpack the localisation files
cd /var/www/html/wp-content/plugins/civicrm/ && wget https://download.civicrm.org/civicrm-5.64.0-l10n.tar.gz
tar -xf civicrm-5.64.0-l10n.tar.gz