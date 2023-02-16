
FLAG1 = -Wall -Werror -g
FLAG2 = -coverage  
 
all: myCode

test1:
	./myCode < test1.txt

test2:
	./myCode < test2.txt

test3:
	./myCode < test3.txt

myCode: qsort.o
	gcc $(FLAG2) $(FLAG1) qsort.c -o myCode

qsort.o: qsort.c
	gcc $(FLAG2) $(FLAG1) -c qsort.c

coverage1:
	lcov  -c -d . --rc lcov_branch_coverage=1 -o coverage.info

coverage2:
	genhtml --branch-coverage -o html coverage.info

clean:
	rm -rf *.o myCode

 
