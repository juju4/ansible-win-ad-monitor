
[![Appveyor - Master](https://ci.appveyor.com/api/projects/status/xit0dk3srx7w377v?svg=true)](https://ci.appveyor.com/project/juju4/ansible-win-ad-monitor)
![Appveyor - Devel](https://ci.appveyor.com/api/projects/status/xit0dk3srx7w377v/branch/devel?svg=true)

# Windows AD monitor ansible role

Ansible role to setup multiple tools to monitor the security state of an Active Directory

* [Inspec Windows baseline](https://github.com/juju4/windows-baseline)
* [PingCastle](https://www.pingcastle.com/)
* [BloodHound](https://github.com/BloodHoundAD/BloodHound)
* [DCSyncMonitor](https://github.com/shellster/DCSYNCMonitor)

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.3
 * 2.4
 * 2.5rc3

### Operating systems

Tested in Appveyor

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.win-ad-monitor
```

Run
```
$ ansible -i inventory -m win_ping win --ask-pass
$ ansible-playbook -i inventory --limit win site.yml
```

## Variables

See defaults/main.yml for full scope

## Continuous integration

This role has a travis basic test (for github, syntax check only), Appveyor test and a Vagrantfile (test/vagrant).

```
$ cd /path/to/roles/juju4.win-ad-monitor/test/vagrant
$ vagrant up
$ vagrant provision
$ vagrant destroy
$ ansible -i .vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory -m win_ping -e ansible_winrm_server_cert_validation=ignore -e ansible_ssh_port=55986 all
```

## Troubleshooting & Known issues

## FAQ

## License

BSD 2-clause

