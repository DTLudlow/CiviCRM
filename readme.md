# Using CiviCRM

The image uses the following base images:

- https://hub.docker.com/_/wordpress
- https://hub.docker.com/_/mariadb

Version 5.69.4 of CiviCRM is acquired, along with its localisation files. As CiviCRM versions change frequently:

- Visit https://civicrm.org/download to obtain the latest versions of the Wordpress and localisation files
- Edit the version number on line 4 of **scripts/civiInstall.sh** to match the current version

**Don't forget to change the user and password values in docker-compose.yaml before using!**

## Wordpress Installation

1. After installing Docker and Docker Compose, type `docker compose -f docker-compose.yml up` into a terminal to build the two containers
2. Open the following link in a browser: http://localhost:8080
3. Complete the Wordpress installation procedure
4. Login to make sure everything is okay.
5. Log out and stop the running containers with `Ctrl+c`

## CiviCRM Installation

1. Start the Docker containers with `docker compose up -d`
2. Open the terminal in the wordpress container with `docker compose exec wordpress bash`
3. Navigate to the /var/scripts folder with `cd /var/scripts`
4. Change the owner of civiInstall.sh with `chown root.root civiInstall.sh`
5. (Optional) Set the permissions of civiInstall.sh so that only the root user can execute with `chmod 100 civiInstall.sh`
6. Obtain and extract the CiviCRM files with `/var/scripts/civiInstall.sh`
7. Quit the wordpress container with `exit`
8. Login to the Wordpress site at http://localhost:8080/wp-admin/
9. Go to Plugins and activate CiviCRM
10. Complete the CiviCRM installation steps

## Running

Open a terminal and type `docker compose up -d` to start the containers.

Open http://localhost:8080 in the browser to see the homepage of the Wordpress site.

To access the CiviCRM admin area, log in to http://localhost:8080/wp-admin/ and select the CiviCRM option in the left-hand Wordpress menu

To stop the containers, type `docker compose down`

## CiviCRM Links

https://docs.civicrm.org/installation/en/latest/wordpress/

https://docs.civicrm.org/sysadmin/en/latest/upgrade/wordpress/#install-localization-files-optional