Vagrant Ruby Development VM
===========================

Vagrant VM to develop Ruby code against.

Uses:

- Ubuntu 16.04
- rbenv
- ansible

Configuration Options
---------------------

- `RUBYDEV_IP`: Private network IP of the VM
- `RUBYDEV_MEMORY`: Memory allocated to the VM
- `WORKON`: Code directory shared in to the VM

Example
-------

```sh
# Host
$ WORKON=/Users/gareth/Code/readingtime vagrant up
$ vagrant ssh

# Guest
$ cd /code/readingtime
$ bundle && bundle exec rake
```
