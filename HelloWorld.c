#include <stdio.h>
#include <string.h>

int main(void) {
    char name[256];

    if (fgets(name, sizeof(name), stdin) == NULL) {
        return 0; // no input; exit quietly
    }

    // Strip trailing newline if present
    size_t len = strlen(name);
    if (len > 0 && name[len - 1] == '\n') {
        name[len - 1] = '\0';
    }

    printf("Hello, %s, welcome to CS321 class.\n", name);
    return 0;
}
