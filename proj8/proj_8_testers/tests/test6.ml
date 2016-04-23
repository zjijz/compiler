# Tests ability to call functions from functions

begin
    foo1() begin
        int z := 3;
        write("foo1: ", z, "\n");
    end

    foo2() begin
        int y := 2;
        foo1();
        write("foo2: ", y, "\n");
    end

    foo3() begin
        int x := 3;
        write("foo3: ", x, "\n");
    end

    foo4() begin
        int x := 2;
        foo3();
        write("foo4: ", x, "\n");
    end

    int x := 1;
    foo2();
    write("main: ", x, "\n");
    foo4();
    write("main: ", x, "\n");
end
