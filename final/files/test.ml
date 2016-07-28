# Tail Call Recursion Test

begin
    foo(int x) begin
        if x > 0 then begin
            write(x);
            foo(x - 1)
        end
    end

    foo(10)
end
