OPTIMIZE=-O2
CFLAGS=-Wall

validns: main.o carp.o mempool.o
	cc $(CFLAGS) -o validns main.o carp.o mempool.o -L/usr/local/lib -lJudy

main.o: main.c
	cc $(CFLAGS) $(OPTIMIZE) -c -o main.o main.c -I/usr/local/include

carp.o: carp.c
	cc $(CFLAGS) $(OPTIMIZE) -c -o carp.o carp.c

mempool.o: mempool.c
	cc $(CFLAGS) $(OPTIMIZE) -c -o mempool.o mempool.c