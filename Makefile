# Name of the project
PROJECT_NAME = COMBINED

# Output directory
BUILDALL = build

# All source code files
SRC =src/factorial.c\
src/mystrcat.c\
src/mystrcmp.c\
src/mystrcpy.c\
src/mystrlen.c\
src/isPalindrome.c\
src/isPrime.c\

# All test source files
#TEST_SRC = 

TEST_OUTPUT = $(BUILDALL)/Test_$(PROJECT_NAME).out

# All include folders with header files
INC	= -Iinclude

PROJECT_OUTPUT = $(BUILDALL)/$(PROJECT_NAME).out

# Default target built
$(PROJECT_NAME):all

# Run the target even if the matching name exists
.PHONY: run clean test  doc all

all: $(SRC) $(BUILDALL)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out

# Call `make run` to run the application
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out

# Build and run the unit tests
test:$(BUILDALL)
	gcc $(TEST_SRC) $(INC) -o $(TEST_OUTPUT) -lcunit
	./$(TEST_OUTPUT)

# Remove all the built files, invoke by `make clean`
clean:
	rm -rf $(BUILDALL) $(DOCUMENTATION_OUTPUT)

# Create new build folder if not present
$(BUILDALL):
	mkdir build
