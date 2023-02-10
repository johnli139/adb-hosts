echo "net.core.rmem_max=26214400" >> /etc/sysctl.d/cloud-sysctl.conf
echo "net.core.rmem_default=26214400" >> /etc/sysctl.d/cloud-sysctl.conf
echo "net.core.wmem_max=26214400" >> /etc/sysctl.d/cloud-sysctl.conf
echo "net.core.wmem_default=26214400" >> /etc/sysctl.d/cloud-sysctl.conf
sysctl -p /etc/sysctl.d/cloud-sysctl.conf
