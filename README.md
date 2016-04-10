[![Build Status](https://travis-ci.org/juju4/ansible-swap.svg?branch=master)](https://travis-ci.org/juju4/ansible-swap)
# Add swap to a system ansible role

A simple ansible role to setup swap from file
For example, for VPS.

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0

### Operating systems

Tested with vagrant on Ubuntu 14.04, Kitchen test with trusty and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - swap
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
$ cd /path/to/roles/swap
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/swap/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause

