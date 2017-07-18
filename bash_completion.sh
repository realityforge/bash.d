_source_files=`ls /usr/local/etc/bash_completion.d/*.sh`
for f in $_source_files
do
  source $f
done
