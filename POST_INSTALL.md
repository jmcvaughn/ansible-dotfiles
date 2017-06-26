# Post-installation instructions
A few manual tasks that I need to perform following installation, these can be
ignored.

## Set up printer
`org.cups.cupsd.service` will need to be started manually despite ansible-arch
`cups` role being configured to do so.

Navigate to `http://localhost:631/`, log in as root, add printer with the
following settings:
```
Connection:     ipp://<HOSTNAME>/ipp/port1
Name:           HomePrinter
Description:    Brother HL-L2340DW mono laser with duplexer
Location:       Home Kitchen
Media Size:     A4
Duplex:         DuplexNoTumble
```

## Telegram Desktop
Deselect:
- `Show senders name`
- `Play sound`
- `Update automatically`

Set notifications to appear top right, download path to `~/downloads/telegram/`.

Set ttohin's [gruvbox
theme](https://github.com/ttohin/tdesktop-gruvbox-dark-medium/).

Remove launcher:
```
$ rm ~/.local/share/applications/telegramdesktop.desktop
```

## Syncthing
- Add devices, compress all data
- Add `~/bin/`, `~/documents/` and `.dotfiles_synced/` directories
- Run `.dotfiles_synced/link.sh` as user

## qutebrowser
Run `:adblock-update`

## LibreOffice
[Disable
autocorrect.](https://help.libreoffice.org/Writer/Word_Completion_for_Text_Documents)

## ZFS setup
### Create mirror
ashift should ideally match page/sector size, however this will impact
compression ratios.
```
# zpool create zpssd \
-fo ashift=13 \
-O atime=off \
-O compression=lz4 \
-O xattr=sa \
-m none \
mirror /dev/disk/by-id/DISK-0.1 /dev/disk/by-id/DISK-0.2

# zpool add zpssd \
-fo ashift=13 \
mirror /dev/disk/by-id/DISK-1.1 /dev/disk/by-id/DISK-1.2
```

### Restrict ARC and L2ARC to metadata only
```
# zfs set primarycache=metadata zpssd
# zfs set secondarycache=metadata zpssd
```

### Add zpool to /etc/zfs/zpool.cache
```
# zpool set cachefile=/etc/zfs/zpool.cache zpssd
```

### Create zvol
```
# zfs create -so volblocksize=16K -V 20G zpssd/sparse16k
```
