#include <iostream>
#include <sqlite3.h>
#include "fmt/format.h"

int main() {
    printf("%s\n", sqlite3_libversion());
    std::cout << fmt::format("Which tool is graal better: {} or {}?\n",
                             "Conan",
                             "Vcpkg");
    return 0;
}
