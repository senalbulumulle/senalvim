## Official Makefile for senalvim




## This will allow to test out the waters of senalvim

run:
	nvim -u nvim/init.lua


## This allows the ability to install the senalvim on the config
## directory

install: 
	cp -R nvim /Users/senal/.config
