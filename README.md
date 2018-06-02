[![Build Status - Master](https://travis-ci.org/juju4/ansible-swap.svg?branch=master)](https://travis-ci.org/juju4/ansible-swap)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-swap.svg?branch=devel)](https://travis-ci.org/juju4/ansible-swap/branches)
# Add swap to a system ansible role

A simple ansible role to setup swap from file
For example, for VPS.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Tested Ubuntu 14.04, 16.04, 18.04 and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.swap
```

## Variables

```
swap_file: /var/tmp/extraswap
## size in MB
swap_size: 1024
```


## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.swap
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.swap/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* swapon is failing on lxc inside digitalocean vps but only on ubuntu trusty
```
swapon: /var/tmp/extraswap: swapon failed: Operation not permitted
```
works fine with xenial or centos7


## License

BSD 2-clause

