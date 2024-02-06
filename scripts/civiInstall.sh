#! /bin/bash

# Check the current CiviCRM version at https://download.civicrm.org and replace the number below (it's updated frequently!)
civiVersion="5.69.4"

# Get apt's list of packages
apt -yq update
# Install wget, unzip and tar, in order to obtain and extract the CiviCRM files
apt -yq install wget unzip tar

# Obtain and unpack the main CiviCRM files
cd /var/www/html/wp-content/plugins/ && wget https://download.civicrm.org/civicrm-$civiVersion-wordpress.zip
unzip civicrm-$civiVersion-wordpress.zip
# Obtain and unpack the localisation files
cd /var/www/html/wp-content/plugins/civicrm/ && wget https://download.civicrm.org/civicrm-$civiVersion-l10n.tar.gz
tar -xf civicrm-$civiVersion-l10n.tar.gz