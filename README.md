# qBsdp
**qBittorrent Synology Docker Patch**

Resolves the issue of Synology units (and similarly old 3.X kernel host os') not being able to run newer https://github.com/linuxserver/docker-qbittorrent builds (error "/usr/bin/qbittorrent-nox: error while loading shared libraries: libQt5Core.so.5: cannot open shared object file: No such file or directory"). Issue referenced in https://github.com/linuxserver/docker-qbittorrent/issues/103

May fix other related issues with Qt5 running on older kernels with LinuxServer docker containers.

Add the custom-cont-init.d and its contents into your /config folder and it will run at startup.  It will install binutils and strip the offending statement on first run, and skip these steps on subsequent startups.
