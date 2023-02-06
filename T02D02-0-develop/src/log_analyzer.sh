file=files.log

echo $(wc -l $file | awk '{print $1}') $(sort -u -t- -k1,1 $file | wc -l) $(sort -u -t- -k1,6 $file | wc -l)
