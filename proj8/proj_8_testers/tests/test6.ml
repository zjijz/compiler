# Tests ability to call functions from functions

void foo1() {
  int z = 3;
  printf("foo1: %d\n", z);
}

void foo2() {
  int y = 2;
  foo1();
  printf("foo2: %d\n", y);
}

void foo3() {
  int x = 3;
  printf("foo3: %d\n", x);
}

void foo4() {
  int x = 2;
  foo3();
  printf("foo4: %d\n", x);
}

int main() {
  int x = 1;
  foo2();
  printf("main: %d\n", x);
  foo4();
  printf("main: %d\n", x);
  return 0;
}

begin
    foo1() begin

    end
end
