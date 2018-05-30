function [ L, D, R ] = ldr( A )
%LDR Summary of this function goes here
%   Detailed explanation goes here
    
    D = diag(diag(A));
    L = tril(A) - D;
    R = triu(A) - D;

end

