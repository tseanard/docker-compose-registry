
# To set up data storage disk
Using Command Line (fdisk)

Identify Disk:
- Open Terminal and find disks
```sudo fdisk -l```
- Start fdisk: (replace /dev/sdb with your disk)
```sudo fdisk /dev/sdb``` 
Create Partition Table:
- Type g (for GPT)
- press Enter, or o (for MBR) if needed.

New Partition:
- Type n, press Enter (for primary)
- accept defaults for start/end sectors to use the whole disk
- then press Enter.
Write Changes:
- Type w
- press Enter to write the new partition table.

Format: (replace /dev/sdb1 with your new partition). 
```
sudo mkfs -t ext4 /dev/sdb1
```

Mount:
- Create a mount point:
```
sudo mkdir /mnt/data
```
- then mount it:
```
sudo mount /dev/sdb1 /mnt/data
```
- create registry data folder referenced in yml
```
sudo mkdir /mnt/data/docker
```

Permanent Mount (Optional):
- Get the UUID ```sudo blkid /dev/sdb1``` 
- add a line to ```sudo nano /etc/fstab``` for automatic mounting at boot. 