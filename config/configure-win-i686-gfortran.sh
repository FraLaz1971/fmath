#/usr/bin/env bash
echo "generating total makefile ..." >/dev/stderr
a=0;t=0;TARGETS=
echo 'FC=f77 -g -O2'
echo 'SRC = $(wildcard src/*.f)'
echo "OBJ = obj/*.o obj/*.obj"
echo 'FFLAGS = -Iinclude'
echo 'LDFLAGS = -Llib -lm'

for t in $(ls -1 src/*.f)
do
	TARGET=$(basename ${t%.*})
	echo 'TARGET'$a = $TARGET
	if [[ ($TARGET != "analysis")&&($TARGET != "quads") ]]
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
	if [[ ($TARGET != "analysis")&&($TARGET != "quads") ]]
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
	echo 'echo created all targets' >/dev/stderr
	echo 'install: all'
        echo -e '\tmv $(TARGETS) bin'
	echo '.PHONY: clean'
	echo 'clean:'
	echo -e "\t"'rm -f $(OBJ) $(TARGETS) *.ps *.dat *.csv'
	echo 'distclean: clean'
        echo -e "\trm -f bin/* Makefile"
echo "generating dirs" >/dev/stderr
if ! test -d bin; then mkdir  bin; fi
if ! test -d obj; then mkdir  obj; fi
