# ansible-dotfiles
ansible-dotfiles is a collection of Ansible playbooks and roles to provision my
user configuration (dotfiles) to my server, desktop and MacBookAir6,2 (2013,
Haswell). These machines run either macOS or Arch Linux.

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

## Node naming in Ansible inventory
The string 'work', contained anywhere within a node name in Ansible's inventory,
is considered a special keyword to apply certain configurations for my work
machines (typically proxies, e.g. in the `qutebrowser` and `zshrc` roles).

## Mac setup script
Packages installed via Homebrew are generally installed/compiled with
similar/same options as the Arch Linux versions, maintaining consistency across
all of my systems.

## Screenshot
![screenshot\_desktop](screenshot_desktop.png?raw=true)
