#/usr/bin/env bash
echo "generating total makefile ..." >&2
a=0;t=0;OBJDIR='src/';OEXE=.o;EEXE='';TARGETS=
echo 'FC=f77 -g -O2'
echo 'EEXE = '
echo 'OEXE = .o'
echo 'SRC = $(wildcard src/*.f)'
echo "OBJ = obj/*$(OEXE)"
echo 'FFLAGS = '
echo 'LDFLAGS = -Llib'
echo 'SRCDIR = src/'
echo 'OBJDIR = obj/'
echo 'BINDIR = bin/'
echo 'RM = rm -f'

for t in $(ls -1 src/*.f)
do
	TARGET=$(basename ${t%.*})
	echo 'TARGET'$a = $TARGET
	if [[ ($TARGET != "analysis")&&($STARGET != "quads") ]]
	then
	TARGETS="$TARGET $TARGETS"
	a=$(($a+1)) 
	fi
done
	echo 'TARGETS' = $TARGETS
	echo 'all: $(TARGETS)'
a=0
for s in $(ls -1 src/*.f)
do
	TARGET=$(basename ${s%.*})
	if [[ ($TARGET != "analysis")&&($STARGET != "quads") ]]
	then
	echo 'obj/$(TARGET'$a').o: src/'$TARGET'.f'
	echo -e "\t"'$(FC) -c   $< -o obj/'$TARGET'.o $(FFLAGS)'
		echo '$(TARGET'$a'): obj/'$TARGET'.o'
		echo -e "\t"'$(FC) -o '$TARGET' $< $(LDFLAGS)'
	else
		:
	fi
	a=$(($a+1)) 
done
        echo 'echo created all targets' >&2
        echo 'install: all'
        echo -e '\tmv $(TARGETS) $(BINDIR)'
        echo '.PHONY: clean'
        echo 'clean:'
        echo -e "\t"'$(RM) $(OBJ) $(TARGETS) *.ps *.dat *.csv fort.* *.log'
        echo 'distclean: clean'
        echo -e "\t"'$(RM) $(BINDIR)* Makefile*'
        echo "generating dirs" >&2
if ! test -d bin; then mkdir  bin; fi
if ! test -d obj; then mkdir  obj; fi
