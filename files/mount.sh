if [ -f /run/.containerenv ]; then
  # systemd-tmpfiles can fail but we don't care
  sudo systemd-tmpfiles --create --boot --exclude-prefix=/dev >/dev/null 2>&1 ||:
  # container don't come with systemd that mounts
  # fstab, do it on our own
  sudo mount -a >/dev/null 2>&1 || echo "Failed to handle mounts"
fi
