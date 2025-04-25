#!/bin/bash

# Make sure the script is run as root
if [ "$EUID" -ne 0 ]; then
echo "Please run this script as root"
exit
fi

# Set the device name
DEVICE="/dev/mmcblk0"

# Use fdisk to perform partition operations
{
echo d # Delete partition
echo 3 # Delete partition 3
echo n # Create a new partition
echo p # Primary partition
echo 3 # Partition number 3
echo 266241 # Start sector
echo # End sector, use the default value (maximum space)
echo N # Do not remove the signature
echo w # Save changes
} | fdisk "$DEVICE"

# Check the file system and expand
resize2fs "${DEVICE}p3"

# Display the disk usage after expansion
df -h
