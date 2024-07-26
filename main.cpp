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
