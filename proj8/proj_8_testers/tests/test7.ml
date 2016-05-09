# Pass by reference test

begin
    foo3(int ref x) begin
        int y;
        write("foo3: ", x, "\n");
		read(y);
		x := x + y;
		write("foo3: ", x, "\n");
    end

    foo2(int ref x) begin
        int z;
        read(z);
        x := x + z;
        write("foo2: ", x, "\n");
        foo3(x)
        write("foo2: ", x, "\n");
    end

    foo1(int ref x) begin
        int t;
        read(t);
        write("foo1: ", x, "\n");
        x := t * x;
        write("foo1: ", x, "\n");
    end

    int x;
    read(x);
    write("main: ", x, "\n");
    foo1(x)
    write("main: ", x, "\n");
    foo2(x)
    write("main: ", x, "\n");
end
