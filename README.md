Role Name
=========

Seafile, install seafile services on the destination


Requirements
------------

Needed roles: (from <https://github.com/sha2017>)

- server.baseline
- server.nginx-php7
- server.mariadb



Documentation
-------------

### Prepare the installation

- fetch the "Server for generic Linux" from <https://www.seafile.com/en/download/>
- that's as of 2017-04: <https://bintray.com/artifact/download/seafile-org/seafile/seafile-server_6.0.9_x86-64.tar.gz>
- edit the 'seafile_version' in vars/main.yml
- To drop all databases of seafile (handy for reinstalling), use --extra-vars "database_remove=true"

### Do the installation

- put stuff below into a playbook
- invoke that playbook

### Redo Seafile installation

All Seafile data (files and databases) will be erased

- on the seafile server: `rm -rf /opt/seafile/data`
- invoke the playbook

### Relevant services

Use with `systemctl start|stop|restart|status ...`

- seafile
- seahub
- nginx
- mysql

Example Playbook
----------------

<pre>
- hosts: seafile
  become: true
  roles:
    - server.baseline
    - server.nginx-php7
    - server.mariadb
    - server.seafile
</pre>

Changelog
---------
 - Peer reviewed
 - Added testing playbook + makefile to create an easy testing enviroment with Vagrant (see testing/Makefile | testing/vagrant.yml)


TODO
----

- in vars: only first IPv4 address is used, needs improvement to include other IPv4 and IPv6 addresses
- test handler

License
-------

WTFPL

Author(s)
------
Derik van Zuetphen, derik@sha2017.org
Maikel van Leeuwen, maikel@sha2017.org