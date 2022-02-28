#! /usr/bin/bash
set -e
echo "deploying..."
directory='../'
source $directory/venv/bin/actiate
command="$directory/venv/bin/python"
$command $directory/manage.py collectstatic --noinput
cp -r $directory/config/nginx.conf .
# execute
dsknkl