if ! mount | grep -q '/cvmfs/'; then
    sudo mount -a >/dev/null 2>&1 || echo "Failed to handle mounts"
fi
