# Tests globals and scoping

begin
    # global needs to be defined before functions that use them!!!
    int x := 0;

    foo1() begin
        write("foo1: ", x, "\n");
        x := x + 10;
        write("foo1: ", x, "\n");
    end

    foo2() begin
        write("foo2: ", x, "\n");
    end

    foo3() begin
        int x := 300;
        write("foo3: ", x, "\n");
    end

    write("main: ", x, "\n");
    foo1()
    write("main: ", x, "\n");
    foo1()
    write("main: ", x, "\n");
    foo2()
    write("main: ", x, "\n");
    foo3()
    write("main: ", x, "\n");
end
