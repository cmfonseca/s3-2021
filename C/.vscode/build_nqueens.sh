gcc -g -I./solver -I./include -c ./nqueens/nqueens.c -o ./nqueens/nqueens.o
gcc -g -I./solver -I./include -c ./nqueens/nqueens-ils.c -o ./nqueens/nqueens-ils.o
gcc -g -I./solver -I./include -c ./nqueens/nqueens-sga.c -o ./nqueens/nqueens-sga.o
gcc -g -I./solver -I./include -c ./nqueens/nqueens-shd.c -o ./nqueens/nqueens-shd.o

gcc -static -L/usr/local/lib ./nqueens/nqueens.o ./nqueens/nqueens-ils.o ./solver/ils.o -lgsl -lgslcblas -lm -o ./nqueens/nqueens-ils
gcc -static -L/usr/local/lib ./nqueens/nqueens.o ./nqueens/nqueens-sga.o ./solver/sga.o -lgsl -lgslcblas -lm -o ./nqueens/nqueens-sga
gcc -static -L/usr/local/lib ./nqueens/nqueens.o ./nqueens/nqueens-shd.o ./solver/shd.o -lgsl -lgslcblas -lm -o ./nqueens/nqueens-shd