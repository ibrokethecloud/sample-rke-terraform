#cloud-config
chpasswd: {expire: False}    
disable_root: 0
ssh_authorized_keys:
  - ${ssh_key}