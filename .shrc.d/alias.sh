alias refresh='source ~/.$(basename $SHELL)rc'

# Run a NixOS VM
alias run-vm='pushd /tmp/result && sudo QEMU_OPTS="-netdev user,id=vnet,hostfwd=tcp::3001-:3001 -nographic -serial mon:stdio" QEMU_KERNEL_PARAMS=console=ttyS0 bin/run-nixos-vm && popd'
