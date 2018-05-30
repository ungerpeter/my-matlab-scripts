function [ max_a ] = Vector_Max_Norm(a)
    max_a = 0;
    for i = 1:size(a,1)
        if abs(a(i)) > max_a
            max_a = abs(a(i));
        end
    end
end