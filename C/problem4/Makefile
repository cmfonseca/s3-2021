# problem4/Makefile
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

all: problem4-shd problem4-sga problem4-ils

clean:
	rm -f *.o *~ core

debug:
	@$(MAKE) OPT=-g

problem4-shd: problem4-shd.o problem4.o
	$(CC) -o $@ $(CFLAGS) $(OPT) $^ $(SDIR)/shd.o $(LIBS)

problem4-sga: problem4-sga.o problem4.o
	$(CC) -o $@ $(CFLAGS) $(OPT) $^ $(SDIR)/sga.o $(LIBS)

problem4-ils: problem4-ils.o problem4.o
	$(CC) -o $@ $(CFLAGS) $(OPT) $^ $(SDIR)/ils.o $(LIBS)

%.o: %.c
	$(CC) -c -o $@ $(CFLAGS) $(OPT) $<

problem4.o: problem4.c $(PDEPS)
problem4-shd.o: problem4-shd.c $(PDEPS) $(IDIR)/shd.h $(SDEPS)
problem4-sga.o: problem4-sga.c $(PDEPS) $(IDIR)/sga.h $(SDEPS)
problem4-ils.o: problem4-ils.c $(PDEPS) $(IDIR)/ils.h $(SDEPS)

