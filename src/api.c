extern int internal_initialize(void);
extern int internal_add (int a, int b);

int initializer () {
    return internal_initialize();
}

int adder(int a, int b) {
    return internal_add(a, b);
}