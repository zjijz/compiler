begin
    # I'd rather do some funky return syntax (like Swift?)
    foo() begin
        int i := 0;
        i := i + 1;
        write("In foo: ", i, "\n");
    end

    foo2() begin
        write("In foo2.\n");
    end

    write("In main.\n");
    foo();
    write("Returned to the main.\n");
    foo();
    write("Returned to main. (Again.)\n");
    foo2();
    write("Returned to main.\n");
end
