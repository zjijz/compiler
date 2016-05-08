# Tests the ability to pass-by-value

begin
    foo1(int x) begin
        write("foo1: ", x, "\n");
        x := 2 * x;
        write("foo1: ", x, "\n");
    end

    foo2(int x, int y) begin
        write("foo2: ", x, "\t", y, "\t", x + y, "\n");
    end

    foo3(string s) begin
        write("foo3: ", s, "\n");
    end

    foo1(100)

    int a := 10;
    foo1(a)
    write("main: ", a, "\n");

    int x := 10;
    foo1(x)
    write("main: ", x, "\n");

    foo2(a,x)
    write("main: ", a, "\t", x, "\n");

    string s := "A Lannister always pays his debts.";
    foo3(s)
    write("main: ", s, "\n");
end
