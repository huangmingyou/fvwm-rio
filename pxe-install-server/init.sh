apt install dnsmasq 
cat <<EOF > /etc/dnsmasq.conf
interface=eth1
domain=yourdomain.com
dhcp-range=192.168.0.3,192.168.0.253,255.255.255.0,1h
dhcp-boot=pxelinux.0,pxeserver,192.168.0.2
enable-tftp
tftp-root=/srv/tftp
pxe-service=x86PC, "PXELINUX (BIOS)", "pxelinux.0"
pxe-service=X86-64_EFI,"PXE (UEFI)","grubx64.efi"

# other UEFI type identifier, see RFC4578 section-2.1

pxe-service=2, "PXELINUX (0002-EFI)", "grubx64.efi"
pxe-service=6, "PXELINUX (0006-EFI)", "grubx64.efi"
pxe-service=7, "PXELINUX (0007-EFI)", "grubx64.efi"
pxe-service=8, "PXELINUX (0008-EFI)", "grubx64.efi"
pxe-service=9, "PXELINUX (0009-EFI)", "grubx64.efi"
EOF

mkdir /srv/tftp -p
cd /srv/tftp
wget http://ftp.debian.org/debian/dists/bookworm/main/installer-amd64/current/images/netboot/netboot.tar.gz
tar -xzvf netboot.tar.gz
rm netboot.tar.gz
ln -s debian-installer/amd64/grubx64.efi .
ln -s debian-installer/amd64/grub .

systemctl restart dnsmasq
