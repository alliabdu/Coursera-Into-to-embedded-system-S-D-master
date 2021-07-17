
# Source Paths
ifeq ($(PLATFORM), MSP432)
        SOURCES = ./src/course1.c \
		  ./src/data.c \
		  ./src/main.c \
                  ./src/memory.c \
		  ./src/stats.c \
                  ./src/interrupts_msp432p401r_gcc.c \
                  ./src/startup_msp432p401r_gcc.c \
                  ./src/system_msp432p401r.c
else 
        SOURCES = ./src/course1.c \
                  ./src/data.c \
                  ./src/main.c \
                  ./src/memory.c \
                  ./src/stats.c
endif

# Include Paths
ifeq ($(PLATFORM), MSP432)
        INCLUDES = -Iinclude/common \
                   -Iinclude/CMSIS \
                   -Iinclude/msp432
else 
        INCLUDES = -Iinclude/common 
endif
