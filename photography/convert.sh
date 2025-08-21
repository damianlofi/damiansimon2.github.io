#!/bin/sh

for f in *.jpg *.JPG *.JPEG *.png; do
    [ -e "$f" ] || continue   # skip if no match
    avifenc --min 30 --max 40 "$f" "images/${f%.*}.avif"
done
