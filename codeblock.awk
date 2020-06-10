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
  printf "\\phantom{}%s \\newline ", $0}
