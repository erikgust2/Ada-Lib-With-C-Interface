#include <stdio.h>
#include "myLib.h"

int main(void)
{
    // Always initialize the Ada runtime first
    if (initializer() != 1)
    {
        fprintf(stderr, "Failed to initialize Ada runtime\n");
        return 1;
    }

    // Test cases to demonstrate the Ada function
    int test_cases[][2] = {
        {5, 3},
        {-1, 1},
        {0, 0},
        {100, 200}};

    // Run through our test cases
    for (int i = 0; i < sizeof(test_cases) / sizeof(test_cases[0]); i++)
    {
        int a = test_cases[i][0];
        int b = test_cases[i][1];
        int result = adder(a, b);

        printf("%d + %d = %d\n", a, b, result);
    }

    return 0;
}