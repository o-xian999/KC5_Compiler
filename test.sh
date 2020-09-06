 #!/bin/bash
 
 assert() {
   expected="$1"
   input="$2"
 
   ./kc5 "$input" > tmp.s
   gcc -o tmp tmp.s
   ./tmp
   actual="$?"
 
   if [ "$actual" = "$expected"  ]; then
     echo "$input => $actual"
   else
     echo "$input => $expected expected, but got $actual"
     exit 1
   fi
 }
 
 # Add your test expression -----
 assert 0 0
 assert 42 42
 assert 78 '56 22 +'
 # ------------------------------
 echo OK
