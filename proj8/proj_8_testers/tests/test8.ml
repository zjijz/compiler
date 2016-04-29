# Complex pass by reference

begin
    foo(int ref x, int ref y) > int begin
        x := x + 1;
        y := y + 1;
        return x + y;
    end

    int a := 0;
    int c := 4;
    int b := foo(a, c);
    write(a, "\t", b, "\n");
end

