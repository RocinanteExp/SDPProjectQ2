# -*- Makefile -*-

CC=gcc
IDIR=./include/
SDIR=./src/
CFLAGS=-pthread -Wall -g -O0

main: $(SDIR)/*.c 
	$(CC) $(SDIR)/*.c $(CFLAGS) -I $(IDIR) -o bin/main
test: src/label.c src/bitmap.c src/graph.c src/labelling.c src/query.c test/labeling_and_query_test.c
	gcc test/labeling_and_query_test.c src/label.c src/bitmap.c src/graph.c src/labelling.c src/query.c -lcheck -lm -lrt -lsubunit -I $(IDIR) -o bin/test
clean: 
	rm -f bin/main
cleanWin: 
	rm bin\main.exe

