#!/bin/sh

mkdir backup

echo "Dumping cfe..."
cp /dev/mtd0 backup/mtd0_cfe.bin

echo "Dumping os..."
cp /dev/mtd1 backup/mtd1_os.bin

echo "Dumping os1..."
cp /dev/mtd2 backup/mtd2_os1.bin

echo "Dumping squashfs..."
cp /dev/mtd3 backup/mtd3_squashfs.bin

echo "Dumping crash..."
cp /dev/mtd4 backup/mtd4_crash.bin

echo "Dumping overlay..."
cp /dev/mtd5 backup/mtd5_overlay.bin

echo "Dumping board_data..."
cp /dev/mtd6 backup/mtd6_board_data.bin

echo "Dumping nvram..."
cp /dev/mtd7 backup/mtd7_nvram.bin

echo "Dumping firmware..."
cp /dev/mtd8 backup/mtd8_firmware.bin

echo "Dumping os2..."
cp /dev/mtd9 backup/mtd9_os2.bin

echo "Making fullflash..."
cat backup/mtd8_firmware.bin backup/mtd6_board_data.bin backup/mtd7_nvram.bin > backup/fullflash.bin

echo "Making stock.trx..."
cat backup/mtd1_os.bin backup/mtd2_os1.bin backup/mtd3_squashfs.bin backup/mtd4_crash.bin backup/mtd5_overlay.bin backup/mtd6_board_data.bin backup/mtd7_nvram.bin > backup/stock.trx

nvram show | sort > backup/nvram.txt

echo "Done."
