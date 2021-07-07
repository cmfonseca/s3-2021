gcc -g -I./solver -I./include -c ./problem3/computerNetwork.c -o ./problem3/computerNetwork.o

#temporary unavailable
gcc -g -I./solver -I./include -c ./problem3/problem3-ils.c -o ./problem3/problem3-ils.o
gcc -g -I./solver -I./include -c ./problem3/problem3-sga.c -o ./problem3/problem3-sga.o
gcc -g -I./solver -I./include -c ./problem3/problem3-shd.c -o ./problem3/problem3-shd.o

gcc -static -L/usr/local/lib ./problem3/computerNetwork.o ./problem3/problem3-ils.o ./solver/ils.o -lgsl -lgslcblas -lm -o ./problem3/problem3-ils
gcc -static -L/usr/local/lib ./problem3/computerNetwork.o ./problem3/problem3-sga.o ./solver/sga.o -lgsl -lgslcblas -lm -o ./problem3/problem3-sga
gcc -static -L/usr/local/lib ./problem3/computerNetwork.o ./problem3/problem3-shd.o ./solver/shd.o -lgsl -lgslcblas -lm -o ./problem3/problem3-shd

