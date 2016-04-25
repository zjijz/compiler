# Implementing a sin function

begin
    fact(int x) > int begin
        if x <= 1 then begin
            return 1;
        end

        return x * fact(x - 1);
    end

    e() > float begin
        int i;
        float s := 0;

        int i := 0;
        while i <= 10 begin
            s := s + 1.0 / fact(i);
            i := i + 1;
        end
    end

    int x;
    read(x);
    write(fact(x), "\n");
    write(e(), "\n");
end
