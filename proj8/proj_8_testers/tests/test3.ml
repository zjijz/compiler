# Tests ability to return values

begin
    foo1() > int begin
        return 10;
    end

    foo2() > string begin
        return "Winter is coming.\n";
    end

    foo3() > string begin
        int x;
        read(x);
        if x >= 10 then begin
            return "Yes\n";
        end else begin
            return "No\n";
        end
    end

    foo4() > bool begin
        return True;
    end

    write(foo1(), "\n");
    write(5*foo1() + foo1(), "\n");
    write(foo2());
    write(foo3());
    if foo4() then begin
        write("Yes\n");
    end
end
