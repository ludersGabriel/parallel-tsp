FLAGS=-O3 -fopenmp -lm
CC=gcc
RM=rm -f

# Executáveis
EXEC1=tsp
EXEC2=tsp-parallel

all: $(EXEC1) $(EXEC2)

# Compilação e linkagem para tsp
$(EXEC1): 
	$(CC) -c $(FLAGS) $(EXEC1).c -o $(EXEC1).o
	$(CC) $(EXEC1).o -o $(EXEC1) $(FLAGS)

# Compilação e linkagem para tsp-parallel
$(EXEC2): 
	$(CC) -c $(FLAGS) $(EXEC2).c -o $(EXEC2).o
	$(CC) $(EXEC2).o -o $(EXEC2) $(FLAGS)

run1Worst:
	./$(EXEC1) < tsp-worst.in

run1Best:
	./$(EXEC1) < tsp-best.in

run1Average:
	./$(EXEC1) < tsp-average.in

run1: 
	./$(EXEC1) < tsp.in

run2Worst:
	./$(EXEC2) < tsp-worst.in

run2Best:
	./$(EXEC2) < tsp-best.in

run2Average:
	./$(EXEC2) < tsp-average.in

run2: 
	./$(EXEC2) < tsp.in

clean:
	$(RM) $(EXEC1).o $(EXEC1) $(EXEC2).o $(EXEC2)
