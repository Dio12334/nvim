BINARY=a.out
CODEDIRS=
INCDIRS=

LINKERFLAGS=
CC=g++
OPT=-02
DEPFLAGS=-MP -MD
CFLAGS= -fopenmp -std=c++17 -Wall -Wextra - g $(foreach D, $(INCDIRS), -I$(D)) $(OPT) $(DEPFLAGS)
CFILES=$(foreach D, $(CODEDIRS), $(wildcard $(D)/*.cpp))
OBJECTS=$(patsubst %.cpp, %.o, $(CFILES))
DEPFILES=$(patsubst %.cpp, %.d, $(CFILES))

all: $(BINARY)

$(BINARY): $(OBJECTS)
	$(CC) -o $@ $^ $(LINKERFLAGS)

%.o:%.cpp
	$(CC) $(CFLAGS) -c -o $@ $< $(LINKERFLAGS)

clean:
	rm -rf $(BINARY) $(OBJECTS) $(DEPFILES)

distribute: clean
	tar zcvf dist.tgz *
	
diff:
	$(info The status of the repository, and the volume of per-file changes:)
	@git status
	@git diff --stat

-include $(DEPFILES)
.PHONY: all clean distribute diff
