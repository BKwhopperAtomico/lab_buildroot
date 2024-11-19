#!/bin/bash

export LINUX_OVERRIDE_SRCDIR=/workspaces/lab_buildroot/buildroot/matricula/linux-4.13.9/

qemu-system-i386 \
  --kernel output/images/bzImage \
  --hda output/images/rootfs.ext2 \
  --nographic \
  --append "console=ttyS0 root=/dev/sda"

