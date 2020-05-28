function J = median_filter(I,M)
    I = double(I);
    N = (sqrt(M) - 1) / 2;
    size_I = size(I);
    J = zeros(size_I(1), size_I(2));
    for m = 1:size_I(1)
        for n = 1:size_I(2)
            my_median = zeros(M,1);
            cntr = 1;
            for i = m - N:m + N
                for j = n - N:n + N
                    if i >= 1 && j >= 1 && i <= size_I(1) && j <= size_I(2)
                        my_median(cntr) = I(i,j);
                    end
                    cntr = cntr + 1;
                end
            end
            J(m,n) = median(my_median);
        end
    end
    J = uint8(J);
end