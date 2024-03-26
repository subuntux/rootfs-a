#!/data/data/com.termux/files/usr/bin/sh
unset LD_PRELOAD

proot \
  -0 \
  --link2symlink \
  -r ~/rootfs \
  -b /dev/ \
  -b /sys/ \
  -b /proc/ \
  -b /data/data/com.termux/files/home \
  /usr/bin/env \
  -i \
  HOME=/root \
  TERM="xterm-256color" \
  PATH=/bin:/usr/bin:/sbin:/usr/sbin \
  /bin/sh --login
