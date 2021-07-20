#/usr/bin/env bash
echo "generating total makefile ..." >&2
a=0;t=0;OBJDIR='src/';SRCDIR='src/';BINDIR='bin/';OEXE='.obj';EEXE='.exe'
TARGETS='';RMTARGETS=''
echo 'FC = ftn77'
echo 'FL = slink'
echo 'EEXE = .exe'
echo 'OEXE = .obj'
echo 'SRC = $(wildcard src/*.f)'
echo "OBJ = *$OEXE"
echo 'FFLAGS = '
echo 'FDFLAGS = /out:'
echo 'LDFLAGS = '
echo 'SRCDIR = src'
echo 'OBJDIR = obj'
echo 'BINDIR = bin'
echo 'RM = del'
echo 'MV = move'

for t in $(ls -1 src/*.f)
do
	TARGET=$(basename ${t%.*})
	echo 'TARGET'$a = $TARGET
	TARGETS="$TARGET $TARGETS"
	RMTARGETS="$TARGET$EEXE $RMTARGETS"
	a=$(($a+1)) 
done
	echo 'TARGETS' = $TARGETS
	echo 'RMTARGETS' = $RMTARGETS
	echo 'all: $(RMTARGETS)'
	echo '.PHONY: $(TARGETS) clean distclean install'
a=0
for s in $(ls -1 src/*.f)
do
	TARGET=$(basename ${s%.*})
	echo '$(TARGET'$a')$(OEXE): $(SRCDIR)\'$TARGET'.f'
	echo -e "\t"'$(FC) $< $(FFLAGS) '
	if [[ $TARGET != "analysis" ]]
	then
		echo '$(TARGET'$a')$(EEXE): $(TARGET'$a')$(OEXE)'
		echo -e "\t"'$(FL) $< $(FDFLAGS)$(TARGET'$a')$(EEXE) $(LDFLAGS)'
        echo '$(TARGET'$a'): $(TARGET'$a')$(EEXE)'
	else
		echo 'analysis:'
	fi
	a=$(($a+1)) 
done
echo 'TARGET'$a' = stdio'
echo '$(SRCDIR)\'stdio'.f: $(SRCDIR)\'stdio'0.txt $(SRCDIR)\'stdio'1.txt'
echo -e '\t' "cat" '$(SRCDIR)\stdio1.txt $(SRCDIR)\stdio.txt >$(SRCDIR)\stdio.f'
echo '$(TARGET'$a')$(OEXE): $(SRCDIR)\$(TARGET'$a').f'
echo -e "\t"'$(FC) $< $(FFLAGS) '
echo '$(TARGET'$a')$(EEXE): $(TARGET'$a')$(OEXE)'
echo -e "\t"'$(FL) $< $(FDFLAGS)$(TARGET'$a')$(EEXE) $(LDFLAGS)'
echo '$(TARGET'$a'): $(TARGET'$a')$(EEXE)'
echo 'echo created all targets' >&2
echo 'install: all'
echo -e '\t $(MV) $(TARGETS) $(BINDIR)'
echo 'clean:'
echo -e "\t"'$(RM) $(OBJ) $(RMTARGETS) *.ps *.dat *.csv fort.* *.log'
echo 'distclean: clean'
echo -e "\t"'$(RM) $(BINDIR)\* Makefile*'
echo "generating dirs" >&2
if ! test -d bin; then mkdir  bin; fi 
if ! test -d obj; then mkdir  obj; fi 
