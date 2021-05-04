# qBsdp
**qBittorrent Synology Docker Patch**

Resolves the issue of Synology units (and similarly old 3.X kernel host os') not being able to run newer https://github.com/linuxserver/docker-qbittorrent builds.

Add the custom-cont-init.d and its contents into your /config folder and it will run at startup.  It will install binutils and strip the offending statement on first run, and skip these steps on subsequent startups.
