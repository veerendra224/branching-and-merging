#!/bin/bash
ls | cpio -ov > directory.cpio

echo 
#archive an entire directory tree
find . -print -depth | cpio -ov > tree.cpio

echo
#
cpio -iv < directory.cpio

echo
#
cpio -idv < tree.cpio

echo
#
find . -depth -print0 | cpio --null -pvd new-dir

echo
#
find . -print | cpio -ocv > /dev/fd0