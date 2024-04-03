#!/bin/bash
# shellcheck disable=SC2046
# shellcheck disable=SC2016
#archive the files directory:
tar cf files.tar files

#Add the -z option to create a compressed GNUzip (gzip) file:
tar czf files.tar.gz files

#To create a tar.bz2 file, add the -j tag:
tar cjf files.tar.bz2 files

#Use the -J tag to compress archives in the tar.xz format:
tar cJf files.tar.xz files

#create a tar archive with the files directory and remove it from the disk in one command:
#tar cf files.tar files --remove-files

#To indicate where to extract the components, add the -C option and specify the path:
mkdir extracted_tar && tar xfC files.tar extracted_tar

#create a new directory named extracted_gz and extract the files.tar.gz contents:
mkdir extracted_gz && tar xzfC files.tar.gz extracted_gz

#To extract files from a tar.bz2 compressed archive into the current directory, use:
mkdir extracted_bz2 && tar xjfC files.tar.bz2 extracted_bz2

#Add the -J option to extract from tar.xz compressed archives
mkdir extracted_xz && tar xJfC files.tar.xz extracted_xz

#Don't overwrite files in the working directory:
tar xf files.tar --keep-old-files

#Extract files only if they are newer than the existing files:
tar xf files.tar --keep-newer-files

#list the files and directories in the files.tar archive:
tar tf files.tar.gz

#to locate file5.txt in the files.tar.gz archive, run:
tar tf files.tar file/file5.txt

#Use the --wildcards option to match multiple file instances.
tar tf files.tar.gz --wildcards file/files5*.txt

#create an archive from the files directory and exclude all .txt files:
tar cf files.tar --exclude='*.txt' files

#List the contents and check if the file exists:
tar tf files.tar | grep file1.txt

#Extract the specific file with:
tar xf files.tar files/file9.txt

#create a tar.gz file and add -v:
tar czfv files.tar.gz files

#tar commands show additional information when you add the -v tag twice
tar czfvv files.tar.gz files

#remove the file using the --delete tag:
tar --delete -f files.tar files/file9.txt

#append the compressed files.tar.gz file to the files.tar archive:
tar rf files.tar files.tar.gz

#copy the existing files.tar file using the cp command:
cp files.tar files_copy.tar

tar Af files.tar files_copy.tar

#create an archive and set the date to January 1st, 1999:
tar cf files.tar files --mtime=1999-01-01

#extract the files with the current date and time:
tar xf files.tar -m

#Preserve original permissions:
tar xf files.tar --preserve-permissions

#The --to-command option instructs tar to send each extracted file to the standard output for an external program. 
tar xf files.tar --to-command='mkdir $TAR_FILENAME'

#To automate daily backups, create a bash script and add the following lines:
tar czf backup-$(date +%2023%12%12).tar.gz files
find backup* -mtime +1 -delete