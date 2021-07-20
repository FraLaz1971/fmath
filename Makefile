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
TARGET0 = arc
TARGET1 = circle
TARGET2 = gcd
TARGETS = gcd circle arc
all: $(TARGETS)
.PHONY: clean
obj/$(TARGET0)$(OEXE): src/arc.f
	$(FC) -c   $< -o obj/arc$(OEXE) $(FFLAGS)
$(TARGET0): obj/arc$(OEXE)
	$(FC) -o arc $< $(LDFLAGS)
obj/$(TARGET1)$(OEXE): src/circle.f
	$(FC) -c   $< -o obj/circle$(OEXE) $(FFLAGS)
$(TARGET1): obj/circle$(OEXE)
	$(FC) -o circle $< $(LDFLAGS)
obj/$(TARGET2)$(OEXE): src/gcd.f
	$(FC) -c   $< -o obj/gcd$(OEXE) $(FFLAGS)
$(TARGET2): obj/gcd$(OEXE)
	$(FC) -o gcd $< $(LDFLAGS)
TARGET3 = stdio
$(SRCDIR)stdio.f: $(SRCDIR)stdio0.txt $(SRCDIR)stdio1.txt
	 cat $(SRCDIR)stdio0.txt $(SRCDIR)stdio.txt >$(SRCDIR)stdio.f
$(OBJDIR)$(TARGET3)$(OEXE): $(SRCDIR)$(TARGET3).f
	$(FC) $(FFLAGS) $< $(FDFLAGS) $(OBJDIR)$(TARGET3)$(OEXE) 
$(TARGET3)$(EEXE): $(OBJDIR)$(TARGET3)$(OEXE)
	$(FL) $< $(FDFLAGS) $(TARGET3)$(EEXE) $(LDFLAGS)
	$(RM) $(SRCDIR)$(TARGET3).f
install: all
	mv $(TARGETS) $(BINDIR)
clean:
	$(RM) $(OBJ) $(TARGETS) stdio *.dat *.csv fort.* *.log
distclean: clean
	$(RM) $(BINDIR)* Makefile*
