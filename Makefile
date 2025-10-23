FC=f77 -g -O2
FL=f77
EEXE = 
OEXE = .o
SRC = $(wildcard src/*.f)
OBJ = obj/*
FFLAGS = -c
FDFLAGS = -o
LDFLAGS = -Llib
SRCDIR = src/
OBJDIR = obj/
BINDIR = bin/
RM = rm -f
TARGET0 = apples
TARGET1 = arc
TARGET2 = avwt
TARGET3 = bars
TARGET4 = c2f
TARGET5 = circle
TARGET6 = cycles
TARGET7 = diffsum
TARGET8 = ex33
TARGET9 = ex36
TARGET10 = ex37
TARGET11 = ex375
TARGET12 = ex45
TARGET13 = exams
TARGET14 = f2c
TARGET15 = fuel
TARGET16 = gcd
TARGET17 = morex
TARGET18 = newtab
TARGET19 = pay
TARGET20 = plusex
TARGET21 = quad
TARGET22 = quad2
TARGET23 = quads
TARGET23 = sum10
TARGET24 = test23
TARGET25 = wheat
TARGETS = wheat test23 sum10 quad2 quad plusex pay newtab morex gcd fuel f2c exams ex45 ex375 ex37 ex36 ex33 diffsum cycles circle c2f bars avwt arc apples
all: $(TARGETS)
.PHONY: clean
obj/$(TARGET0)$(OEXE): src/apples.f
	$(FC) -c   $< -o obj/apples$(OEXE) $(FFLAGS)
$(TARGET0): obj/apples$(OEXE)
	$(FC) -o apples $< $(LDFLAGS)
obj/$(TARGET1)$(OEXE): src/arc.f
	$(FC) -c   $< -o obj/arc$(OEXE) $(FFLAGS)
$(TARGET1): obj/arc$(OEXE)
	$(FC) -o arc $< $(LDFLAGS)
obj/$(TARGET2)$(OEXE): src/avwt.f
	$(FC) -c   $< -o obj/avwt$(OEXE) $(FFLAGS)
$(TARGET2): obj/avwt$(OEXE)
	$(FC) -o avwt $< $(LDFLAGS)
obj/$(TARGET3)$(OEXE): src/bars.f
	$(FC) -c   $< -o obj/bars$(OEXE) $(FFLAGS)
$(TARGET3): obj/bars$(OEXE)
	$(FC) -o bars $< $(LDFLAGS)
obj/$(TARGET4)$(OEXE): src/c2f.f
	$(FC) -c   $< -o obj/c2f$(OEXE) $(FFLAGS)
$(TARGET4): obj/c2f$(OEXE)
	$(FC) -o c2f $< $(LDFLAGS)
obj/$(TARGET5)$(OEXE): src/circle.f
	$(FC) -c   $< -o obj/circle$(OEXE) $(FFLAGS)
$(TARGET5): obj/circle$(OEXE)
	$(FC) -o circle $< $(LDFLAGS)
obj/$(TARGET6)$(OEXE): src/cycles.f
	$(FC) -c   $< -o obj/cycles$(OEXE) $(FFLAGS)
$(TARGET6): obj/cycles$(OEXE)
	$(FC) -o cycles $< $(LDFLAGS)
obj/$(TARGET7)$(OEXE): src/diffsum.f
	$(FC) -c   $< -o obj/diffsum$(OEXE) $(FFLAGS)
$(TARGET7): obj/diffsum$(OEXE)
	$(FC) -o diffsum $< $(LDFLAGS)
obj/$(TARGET8)$(OEXE): src/ex33.f
	$(FC) -c   $< -o obj/ex33$(OEXE) $(FFLAGS)
$(TARGET8): obj/ex33$(OEXE)
	$(FC) -o ex33 $< $(LDFLAGS)
obj/$(TARGET9)$(OEXE): src/ex36.f
	$(FC) -c   $< -o obj/ex36$(OEXE) $(FFLAGS)
$(TARGET9): obj/ex36$(OEXE)
	$(FC) -o ex36 $< $(LDFLAGS)
obj/$(TARGET10)$(OEXE): src/ex37.f
	$(FC) -c   $< -o obj/ex37$(OEXE) $(FFLAGS)
$(TARGET10): obj/ex37$(OEXE)
	$(FC) -o ex37 $< $(LDFLAGS)
obj/$(TARGET11)$(OEXE): src/ex375.f
	$(FC) -c   $< -o obj/ex375$(OEXE) $(FFLAGS)
$(TARGET11): obj/ex375$(OEXE)
	$(FC) -o ex375 $< $(LDFLAGS)
obj/$(TARGET12)$(OEXE): src/ex45.f
	$(FC) -c   $< -o obj/ex45$(OEXE) $(FFLAGS)
$(TARGET12): obj/ex45$(OEXE)
	$(FC) -o ex45 $< $(LDFLAGS)
obj/$(TARGET13)$(OEXE): src/exams.f
	$(FC) -c   $< -o obj/exams$(OEXE) $(FFLAGS)
$(TARGET13): obj/exams$(OEXE)
	$(FC) -o exams $< $(LDFLAGS)
obj/$(TARGET14)$(OEXE): src/f2c.f
	$(FC) -c   $< -o obj/f2c$(OEXE) $(FFLAGS)
$(TARGET14): obj/f2c$(OEXE)
	$(FC) -o f2c $< $(LDFLAGS)
obj/$(TARGET15)$(OEXE): src/fuel.f
	$(FC) -c   $< -o obj/fuel$(OEXE) $(FFLAGS)
$(TARGET15): obj/fuel$(OEXE)
	$(FC) -o fuel $< $(LDFLAGS)
obj/$(TARGET16)$(OEXE): src/gcd.f
	$(FC) -c   $< -o obj/gcd$(OEXE) $(FFLAGS)
$(TARGET16): obj/gcd$(OEXE)
	$(FC) -o gcd $< $(LDFLAGS)
obj/$(TARGET17)$(OEXE): src/morex.f
	$(FC) -c   $< -o obj/morex$(OEXE) $(FFLAGS)
$(TARGET17): obj/morex$(OEXE)
	$(FC) -o morex $< $(LDFLAGS)
obj/$(TARGET18)$(OEXE): src/newtab.f
	$(FC) -c   $< -o obj/newtab$(OEXE) $(FFLAGS)
$(TARGET18): obj/newtab$(OEXE)
	$(FC) -o newtab $< $(LDFLAGS)
obj/$(TARGET19)$(OEXE): src/pay.f
	$(FC) -c   $< -o obj/pay$(OEXE) $(FFLAGS)
$(TARGET19): obj/pay$(OEXE)
	$(FC) -o pay $< $(LDFLAGS)
obj/$(TARGET20)$(OEXE): src/plusex.f
	$(FC) -c   $< -o obj/plusex$(OEXE) $(FFLAGS)
$(TARGET20): obj/plusex$(OEXE)
	$(FC) -o plusex $< $(LDFLAGS)
obj/$(TARGET21)$(OEXE): src/quad.f
	$(FC) -c   $< -o obj/quad$(OEXE) $(FFLAGS)
$(TARGET21): obj/quad$(OEXE)
	$(FC) -o quad $< $(LDFLAGS)
obj/$(TARGET22)$(OEXE): src/quad2.f
	$(FC) -c   $< -o obj/quad2$(OEXE) $(FFLAGS)
$(TARGET22): obj/quad2$(OEXE)
	$(FC) -o quad2 $< $(LDFLAGS)
obj/$(TARGET24)$(OEXE): src/sum10.f
	$(FC) -c   $< -o obj/sum10$(OEXE) $(FFLAGS)
$(TARGET24): obj/sum10$(OEXE)
	$(FC) -o sum10 $< $(LDFLAGS)
obj/$(TARGET25)$(OEXE): src/test23.f
	$(FC) -c   $< -o obj/test23$(OEXE) $(FFLAGS)
$(TARGET25): obj/test23$(OEXE)
	$(FC) -o test23 $< $(LDFLAGS)
obj/$(TARGET26)$(OEXE): src/wheat.f
	$(FC) -c   $< -o obj/wheat$(OEXE) $(FFLAGS)
$(TARGET26): obj/wheat$(OEXE)
	$(FC) -o wheat $< $(LDFLAGS)
TARGET27 = stdio
$(SRCDIR)stdio.f: $(SRCDIR)stdio0.txt $(SRCDIR)stdio1.txt
	 cat $(SRCDIR)stdio0.txt $(SRCDIR)stdio.txt >$(SRCDIR)stdio.f
$(OBJDIR)$(TARGET27)$(OEXE): $(SRCDIR)$(TARGET27).f
	$(FC) $(FFLAGS) $< $(FDFLAGS) $(OBJDIR)$(TARGET27)$(OEXE) 
$(TARGET27)$(EEXE): $(OBJDIR)$(TARGET27)$(OEXE)
	$(FL) $< $(FDFLAGS) $(TARGET27)$(EEXE) $(LDFLAGS)
	$(RM) $(SRCDIR)$(TARGET27).f
install: all
	mv $(TARGETS) $(BINDIR)
clean:
	$(RM) $(OBJ) $(TARGETS) stdio *.dat *.csv fort.* *.log
distclean: clean
	$(RM) $(BINDIR)* Makefile*
