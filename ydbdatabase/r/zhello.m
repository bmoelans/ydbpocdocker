; About: Simple Hello world

%World
 w !,"Hello World"
 q

%JsonEx
 n ZA
 s ZA("Hello")="World"
 s ZA("further",1)="A"
 s ZA("further",2)="B"
 d ^%JSWRITE("ZA","*","noglvname")  ; https://docs.yottadb.com/ProgrammersGuide/utility.html#jswrite
 q
