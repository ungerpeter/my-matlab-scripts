function [ max_A ] = Matrix_Max_Norm(A)
    max_A = 0;
    for i = 1:size(A,1)
        row_sum = 0;
        for j = 1:size(A,2)
            row_sum = row_sum + abs(A(i,j));
        end
        if row_sum > max_A
            max_A = row_sum;
        end
    end
end