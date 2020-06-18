{
  gsub("[\\\\]","\\textbackslash ");
  gsub("[$]","\\$");
  gsub("[&]","\\textambersand ");
  gsub("[%]","\\%");
  gsub("[#]","\\#");
  gsub("[_]","\\_");
  gsub("[{]","\\{");
  gsub("[}]","\\}");
  gsub("[~]","\\textasciitilde ");
  gsub("[\\^]","\\textasciicircum ");
  match($0, /^ */);
  printf "\\phantom{"
  for (i=0; i<RLENGTH; i=i+1) printf("X");
  printf "}%s \\newline ", substr($0,RLENGTH+1)
}
