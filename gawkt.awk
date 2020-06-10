
BEGIN {print "include(`./m4ddata/def.m4')"}
NR==1 && /^---$/ {count=0;}
/^---$/,/^---$/ {count=count+1; printf "macro%s",count; next}
!/^m4/ {print "¹"$0"²"}\
/^m4/ { for (i=2;i<NF;i++) printf("%s ", $i); printf("%s", $NF); printf("\n") }



