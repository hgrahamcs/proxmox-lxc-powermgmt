# proxmox-lxc-powermgmt

Created a script to automated the power toggles of an LXC container inside proxmox.
Sends curl requests to the proxmox api which, given permissions are correct, will toggle the LXC.

I'm using this as part of a system of jumpboxes to connect to vpns over ssh tunnels but this script will work for anything that needs on demand power managment.

VM.PowerMgmt is the needed permissions for your api token and user being used for this purpose.
