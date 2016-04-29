# Complex pass by reference

begin
    foo1(int ref x, int ref y) > int begin
        x := x + 1;
        write("foo1: ", x, " ", y, "\n");
        y := y + 1;
        write("foo1: ", x, " ", y, "\n");
        return x + y;
    end

    foo2(int ref x) begin
        int b;
        read(b);
        int a := x;
        a := a + b;
        write("foo2: ", x, " ", a, "\n");
    end

    int a;
    read(a);
    int b = foo1(a, a);
    write("main: ", a, " ", b);

    int c;
    read(c);
    foo2(c);
end

