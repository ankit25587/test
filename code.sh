sudo mkdir /mnt/demosharea
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/mystorage255.cred" ]; then
    sudo bash -c 'echo "username=mystorage255" >> /etc/smbcredentials/mystorage255.cred'
    sudo bash -c 'echo "password=oLR4nKfa7WsBIscjeu0XIqd7m8elwxwaO2bl7xhvtXLPqaLcWyx6DEO5ybLJiYPFBAeoQchOMn6jqaQSn8OVkw==" >> /etc/smbcredentials/mystorage255.cred'
fi
sudo chmod 600 /etc/smbcredentials/mystorage255.cred

sudo bash -c 'echo "//mystorage255.file.core.windows.net/demosharea /mnt/demosharea cifs nofail,vers=3.0,credentials=/etc/smbcredentials/mystorage255.cred,dir_mode=0777,file_mode=0777,serverino" >> /etc/fstab'
sudo mount -t cifs //mystorage255.file.core.windows.net/demosharea /mnt/demosharea -o vers=3.0,credentials=/etc/smbcredentials/mystorage255.cred,dir_mode=0777,file_mode=0777,serverino
