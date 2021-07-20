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
	TARGETS="$TARGET $TARGETS"
	a=$(($a+1)) 
done
	echo 'TARGETS' = $TARGETS
	echo 'all: $(TARGETS)'
a=0
for s in $(ls -1 src/*.f)
do
	TARGET=$(basename ${s%.*})
	echo 'obj/$(TARGET'$a').o: src/'$TARGET'.f'
	echo -e "\t"'$(FC) -c   $< -o obj/'$TARGET'.o $(FFLAGS)'
	if [[ $TARGET != "analysis" ]]
	then
		echo '$(TARGET'$a'): obj/'$TARGET'.o'
		echo -e "\t"'$(FC) -o '$TARGET' $< $(LDFLAGS)'
	else
		echo 'analysis:'
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
mkdir  bin obj
