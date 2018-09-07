SHELL = /bin/bash

bspfuzz: main.cpp
	g++ -Wall -std=c++11 -o $@ $< -m32 -Wl,-rpath=$$(pwd)/bin -ldl -no-pie

patch:
	python2 patch.py
