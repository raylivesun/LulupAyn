# LulupAyn (https://www.freebasic.net/wiki/DocToc)

LulupAyn is a programming language developed by Jeff Smith, specifically for the FreeBASIC compiler. It is a dialect of BASIC, designed to be easy to learn and use, while offering advanced features and performance. The link provided (https://www.freebasic.net/wiki/DocToc) is a documentation table of contents for FreeBASIC, which includes detailed information about the language, its syntax, and available libraries.    

# LulupAyn (https://www.freebasic.net/wiki/CatPgFullIndex)

The link provided (https://www.freebasic.net/wiki/CatPgFullIndex) is a full index of all pages in the FreeBASIC documentation, including articles, tutorials, and examples. This index can be helpful for finding specific topics or examples related to LulupAyn programming language.

# LulupAyn (https://www.freebasic.net/wiki/CatPgProgrammer)

The link provided (https://www.freebasic.net/wiki/CatPgProgrammer) is a category page in the FreeBASIC documentation that focuses on programming concepts, tutorials, and examples related to LulupAyn programming language. This page can be helpful for understanding the basics of programming in LulupAyn and for finding specific examples or tutorials.


# LulupAyn (https://www.freebasic.net/wiki/ProPgProperties)

The link provided (https://www.freebasic.net/wiki/ProPgProperties) is a page in the FreeBASIC documentation that discusses properties in LulupAyn programming language. Properties are a way to encapsulate data and behavior within objects, providing a more intuitive and user-friendly way to access and manipulate data. This page can be helpful for understanding how properties work in LulupAyn and for learning how to use them in your own code.

# makefiles and property accessors work
```makefile
CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g main.cpp
LDFLAGS =  main.cpp

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = lulupayn

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)
```    

# Creating a new property c++ object from a property
```c++
#include <string.h>
#include <stdio.h>


void reverseString(char* str) {
    int len = strlen(str);
    char* start = str;
    char* end = str + len - 1;

    while (start < end) {
        char temp = *start;
        *start = *end;
        *end = temp;
        start++;
        end--;
    }
}

void reverseWords(char* str) {
    reverseString(str);

    char* start = str;
    char* end = str;

    while (*end != '\0') {
        if (*end == ' ') {
            reverseString(start);
            start = end + 1;
        }
        end++;
    }

    reverseString(start);
}

int main() {
    char str[] = "Hello, World!";
    reverseWords(str);
    printf("Reversed words: %s\n", str);
    return 0;
}
```

# install makefile
$-> make all

