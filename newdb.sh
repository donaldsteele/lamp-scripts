#!/bin/bash
###################################################################
### CONFIGURATION AREA                                          ###
###################################################################

# Define the username and password of a user that can create dbs
# and grant permissions.
user=root
password=root

###################################################################
### WORK AREA                                                   ###
###################################################################

die () {
    echo >&2 "$@"
    exit 1
}

# Check if we have an argument, exit if not
[ "$#" -eq 2 ] || die "Need a user name and password as argument (only)"

# Create database
mysql -u$user -p$password -e "CREATE DATABASE $1_db"
mysql -u$user -p$password -e "GRANT ALL PRIVILEGES ON $1.* TO $1@localhost IDENTIFIED BY '$2'"


# Let the user know something good just happened
echo "Database creation of $1 complete."
echo "Access with username $1_user and password $2"
