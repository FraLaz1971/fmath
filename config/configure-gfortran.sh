#/usr/bin/env bash
echo "generating total makefile ..." >&2
a=0;t=0;OBJDIR='src/';OEXE=.o;EEXE='';TARGETS=
echo 'FC=f77 -g -O2'
echo 'FL=f77'
echo 'EEXE = '
echo 'OEXE = .o'
echo 'SRC = $(wildcard src/*.f)'
echo "OBJ = obj/*$(OEXE)"
echo 'FFLAGS = -c'
echo 'FDFLAGS = -o'
echo 'LDFLAGS = -Llib'
echo 'SRCDIR = src/'
echo 'OBJDIR = obj/'
echo 'BINDIR = bin/'
echo 'RM = rm -f'

for t in $(ls -1 src/*.f)
do
	TARGET=$(basename ${t%.*})
	echo 'TARGET'$a = $TARGET
	TARGETS="$TARGET $TARGETS"
	a=$(($a+1)) 
done
echo 'TARGETS' = $TARGETS
echo 'all: $(TARGETS)'
echo '.PHONY: clean'
a=0
for s in $(ls -1 src/*.f)
do
	TARGET=$(basename ${s%.*})
	echo 'obj/$(TARGET'$a')$(OEXE): src/'$TARGET'.f'
	echo -e "\t"'$(FC) -c   $< -o obj/'$TARGET'$(OEXE) $(FFLAGS)'
	if [[ $TARGET != "analysis" ]]
	then
		echo '$(TARGET'$a'): obj/'$TARGET'$(OEXE)'
		echo -e "\t"'$(FC) -o '$TARGET' $< $(LDFLAGS)'
	else
		echo 'analysis:'
	fi
	a=$(($a+1)) 
done
echo 'TARGET'$a' = stdio'
echo '$(SRCDIR)'stdio'.f: $(SRCDIR)'stdio'0.txt $(SRCDIR)'stdio'1.txt'
echo -e '\t' "cat" '$(SRCDIR)stdio0.txt $(SRCDIR)stdio.txt >$(SRCDIR)stdio.f'
echo '$(OBJDIR)$(TARGET'$a')$(OEXE): $(SRCDIR)$(TARGET'$a').f'
echo -e "\t"'$(FC) $(FFLAGS) $< $(FDFLAGS) $(OBJDIR)$(TARGET'$a')$(OEXE) '
echo '$(TARGET'$a')$(EEXE): $(OBJDIR)$(TARGET'$a')$(OEXE)'
echo -e "\t"'$(FL) $< $(FDFLAGS) $(TARGET'$a')$(EEXE) $(LDFLAGS)'
echo -e "\t"'$(RM) $(SRCDIR)$(TARGET'$a').f'
echo 'echo created all targets' >&2
echo 'install: all'
echo -e '\tmv $(TARGETS) $(BINDIR)'
echo 'clean:'
echo -e "\t"'$(RM) $(OBJ) $(TARGETS) stdio *.dat *.csv fort.* *.log'
echo 'distclean: clean'
echo -e "\t"'$(RM) $(BINDIR)* Makefile*'
echo "generating dirs" >&2
if ! test -d bin; then mkdir  bin; fi 
if ! test -d obj; then mkdir  obj; fi 
