#!/bin/sh

echo "Flashing CFE..."
mtd write cfe.bin boot
echo "Done."
