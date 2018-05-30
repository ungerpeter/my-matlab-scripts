function [A_triangle, detA, x] = Unger_Peter_06_Aufg2(A, b)
    detA = det(A);
    [A_triangle, b] = createUpperRightTriangle(A, b);
    x = insertBackwards(A_triangle, b);
end

function [A_triangle, b] = createUpperRightTriangle(A, b)
    A_matrix= swapRowsWhenNeeded([A b]);
    for column = 1:size(A_matrix,1)-1
        A_matrix = createZerosInColumn(A_matrix, column);
    end
    A_triangle = A_matrix(:,1:size(A_matrix,2)-1);
    b = A_matrix(:,size(A_matrix,2):size(A_matrix,2));
end

function [x] = insertBackwards(A, b)
    n = size(A,2);
    x = zeros(size(A,2),1);
    x(n) = rdivide(b(n), A(n,n));
    for i = n-1:-1:1
        multiplikator = rdivide(1, A(i,i));
        subtrahend = 0;
        for j=i+1:n
            subtrahend = subtrahend + A(i,j)*x(j);
        end
        x(i) = multiplikator * (b(i) - subtrahend);
    end
end

function [A] = createZerosInColumn(A, i)
    for j = i+1:size(A,2)-1
        subtrahend = rdivide(A(j, i),A(i,i)) * A(i,:);
        A(j,:) = A(j,:) - subtrahend;
    end
end

function [A]  = swapRowsWhenNeeded(A)
    for row = 1:size(A,2)
        if A(row, 1) ~= 0
            A = swapRows(A, 1, row);
            break
        end
        if row == size(A,2)
            error('Gleichungssystem nicht eindeutig lösbar oder sogar unlösbar');
        end
    end
end

function [A_swapped] = swapRows(A, row1, row2)
    A([row1 row2],:) = A([row2 row1],:);
    A_swapped = A;
end