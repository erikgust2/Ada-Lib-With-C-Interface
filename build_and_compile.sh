gprbuild -P MyLib.gpr

gcc -o test_program main.c -L./lib -lMyLib -Wl,-rpath,./lib