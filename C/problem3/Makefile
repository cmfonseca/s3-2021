# problem3/Makefile
#
# (C) 2018 Carlos M. Fonseca <cmfonsec@dei.uc.pt>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or (at
# your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

IDIR = ../include
SDIR = ../solver
CC = gcc
OPT = -O3
CFLAGS = -I$(IDIR)
PDEPS = $(IDIR)/problem.h $(IDIR)/s3problem.h
SDEPS = $(IDIR)/solver.h
LIBS = -lgsl -lgslcblas -lm

.PHONY: all clean debug

all: problem3-shd problem3-sga problem3-ils

clean:
	rm -f *.o *~ core

debug:
	@$(MAKE) OPT=-g

problem3-shd: problem3-shd.o problem3.o
	$(CC) -o $@ $(CFLAGS) $(OPT) $^ $(SDIR)/shd.o $(LIBS)

problem3-sga: problem3-sga.o problem3.o
	$(CC) -o $@ $(CFLAGS) $(OPT) $^ $(SDIR)/sga.o $(LIBS)

problem3-ils: problem3-ils.o problem3.o
	$(CC) -o $@ $(CFLAGS) $(OPT) $^ $(SDIR)/ils.o $(LIBS)

%.o: %.c
	$(CC) -c -o $@ $(CFLAGS) $(OPT) $<

problem3.o: problem3.c $(PDEPS)
problem3-shd.o: problem3-shd.c $(PDEPS) $(IDIR)/shd.h $(SDEPS)
problem3-sga.o: problem3-sga.c $(PDEPS) $(IDIR)/sga.h $(SDEPS)
problem3-ils.o: problem3-ils.c $(PDEPS) $(IDIR)/ils.h $(SDEPS)

