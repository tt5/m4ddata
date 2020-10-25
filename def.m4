changequote(¹, ²)
define(¹mymacro²,¹esyscmd(¹echo '$1' > outfromfile.tex²)²)

define(¹subst²,¹patsubst(¹$1²,¹^\w+²,¹\\def \\var\&²)²) 
define(¹macro²,¹mymacro(subst(¹$1²))²)
define(¹macro1²,¹macro(²)
define(¹macro2²,¹)²)

define(¹q²,¹\quad²)
define(¹s²,¹$\star$²)
define(¹0²,¹²)
