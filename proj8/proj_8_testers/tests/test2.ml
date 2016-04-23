# Tests more complex functions

begin
    foo() begin
        int i = 0;
        while i < 5 begin
            if i % 2 == 0 then begin
                write(i);
            end
            i := i + 1;
        end
        write("\n");
    end

    foo();
    write("Done\n");
    foo();
    write("Done\n");
end
