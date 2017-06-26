# ansible-dotfiles
ansible-dotfiles is a collection of Ansible playbooks and roles to provision my
user configuration (dotfiles) to my server, desktop and MacBookAir6,2 (2013,
Haswell).

It is presumed that ansible-dotfiles will be run on a system that has been
provisioned using [ansible-arch](https://github.com/v0rn/ansible-arch); much of
the same experience with YAML and Ansible is assumed. You will need to create
your own configuration; see the [ansible-arch's Configuration
section](https://github.com/v0rn/ansible-arch#configuration) for further
guidance. In the same vein, ansible-dotfiles' code and `defaults/main.yml` for
each role are considered as documentation.

## Cloning ansible-dotfiles
```
$ git clone https://github.com/v0rn/ansible-dotfiles.git
```

## Usage
```
$ ansible-playbook pc.yml -i hosts -e host=HOST
```

If required, substitute the playbook for your own or `server.yml`. Substitute
`HOST` for the name of the system as defined in the `hosts` file and in the
corresponding `host_vars/` file.

If the `syncthing` role is configured to create a system service rather than
a user service, append `-K` to the command above.

## Tags
Tags are defined to match role names in the playbooks. It is therefore possible
to limit the executed roles by appending `-t TAG`, where `TAG` refers to a role
or a comma-delimited list of roles to run.

## Screenshot
![screenshot\_desktop](screenshot_desktop.png?raw=true)
