chown :group1 file1.txt
chown veerendra:group1 chgrp.sh
chown --from=:group1 group2 chgrp.sh
chown --references=file1.txt bc.sh
chgrp group1 file1.txt
chgrp -R group1 file1.txt
chgrp -c group1 file2.txt
chgrp -f group2 file2.txt
chgrp -v group3 file2.txt

