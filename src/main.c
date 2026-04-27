// main.c

#include <stdio.h>
#include <stdlib.h>


#define SENAL_VIM_CONFIG_PATH "config"


int main(int argc, char *argv[]) 
{
        // allows the ability to init and create the config folder
        // and then parse it out with lua
        FILE *file = fopen(SENAL_VIM_CONFIG_PATH, "w");
        return 0;
}
