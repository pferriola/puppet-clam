# Clam module for Puppet

This module manages clam on Linux (Currently RHEL, CentOS 5/6, Debian, Ubuntu)
distros.  The module will install and ensure the latest clam and clamdb have 
been installed.  Also installed will be a crontab entry for doing a nightly scan
of your system.  

## Usage

	class {
		clam:
			email => "username@domain.com",
			scan_directory  => "/srv/www/";
	}

If no parameters are passed, the system will scan / and send an email to root.

Special thanks to Craig Carnell (https://github.com/craigcarnell) for the Ubuntu support.  
