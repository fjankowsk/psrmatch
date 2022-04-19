BLK         =   black
PIP         =   pip

BASEDIR     =   $(CURDIR)
SRCDIR      =   ${BASEDIR}/psrmatch

help:
	@echo 'Makefile for psrmatch'
	@echo 'Usage:'
	@echo 'make black           reformat the code using black code formatter'
	@echo 'make clean           remove temporary files'
	@echo 'make install         install the module locally'

black:
	${BLK} *.py */*.py */*/*.py

clean:
	rm -f ${SRCDIR}/*.pyc
	rm -f ${SRCDIR}/apps/*.pyc
	rm -rf ${SRCDIR}/__pycache__
	rm -rf ${SRCDIR}/apps/__pycache__
	rm -rf ${BASEDIR}/tests/__pycache__
	rm -rf ${BASEDIR}/build
	rm -rf ${BASEDIR}/dist
	rm -rf ${BASEDIR}/psrmatch.egg-info

install:
	${PIP} install .

.PHONY: help black clean install