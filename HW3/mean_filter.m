function J = mean_filter(I,M)
    I = double(I);
    N = (sqrt(M) - 1) / 2;
    size_I = size(I);
    J = zeros(size_I(1), size_I(2));
    for m = 1:size_I(1)
        for n = 1:size_I(2)
            my_sum = 0;
            for i = m - N:m + N
                for j = n - N:n + N
                    if i >= 1 && j >= 1 && i <= size_I(1) && j <= size_I(2)
                        my_sum = my_sum + I(i,j);
                    end
                end
            end
            J(m,n) = my_sum / M;
        end
    end
    J = uint8(J);
end

% function J = mean_filter(I,M)
%     
%     N = (sqrt(M) - 1) / 2;
%     size_I = size(I);
%     J = zeros(size_I(1), size_I(2));
%     for m = 1:size_I(1)
%         for n = 1:size_I(2)
%             i1 = m - N;
%             i2 = m + N;
%             j1 = n - N;
%             j2 = n + N;
%             if i1 < 1
%                 i1 = 1;
%             end
%             if j1 < 1
%                 j1 = 1;
%             end
%             if i2 > size_I(1)
%                 i2 = size_I(1);
%             end
%             if j2 > size_I(2)
%                 j2 = size_I(2);
%             end
%             J(m,n) = sum(sum(I(i1:i2, j1:j2))) / M;
%         end
%     end
% end