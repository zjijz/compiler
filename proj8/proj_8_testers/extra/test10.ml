# Tests fibonacci

begin
    fib(int x) > int begin
        if x <= 1 begin
            return x;
        end

        return fib(x - 1) + fib(x - 2);
    end

    int f;
    read(f);
    write(fib(f), "\n");
end
