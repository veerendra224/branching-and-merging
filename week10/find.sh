find ./ file1.txt
find ./ -name *.txt
find ./ -empty
find ./ -perm 664
find . -type d
find ./ -type f -name "*.txt" -exec grep VEERENDRA {} \;
find . -type f -exec grep -l "VEERENDRA" {}

