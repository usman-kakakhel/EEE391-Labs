A = imread('image3.jpg');
size_A = size(A);

R_grey = zeros(size_A(1), size_A(2));
R_indices = find(A(:,:,1) > 140);
R_grey(R_indices) = 1;
R_img = imshow(R_grey);
caption = sprintf('R > 140');
title(caption, 'FontSize', 14);
drawnow;

waitfor(R_img);
G_grey = zeros(size_A(1), size_A(2));
G_indices = find(A(:,:,2) > 140);
G_grey(G_indices) = 1;
G_img = imshow(G_grey);
caption = sprintf('G > 140');
title(caption, 'FontSize', 14);
drawnow;

waitfor(G_img);
B_grey = zeros(size_A(1), size_A(2));
B_indices = find(A(:,:,3) > 140);
B_grey(B_indices) = 1;
B_img = imshow(B_grey);
caption = sprintf('B > 140');
title(caption, 'FontSize', 14);
drawnow;

waitfor(B_img);
RGB_grey = zeros(size_A(1), size_A(2));
RGB_indices = find(A(:,:,1) > 140 & A(:,:,2) > 140 & A(:,:,3) < 30);
RGB_grey(RGB_indices) = 1;
RGB_img = imshow(RGB_grey);
caption = sprintf('R > 140 & G > 140 & B < 30');
title(caption, 'FontSize', 14);
drawnow;

waitfor(RGB_img);
grey = zeros(size_A(1), size_A(2));
grey = (A(:,:,1) + A(:,:,2) + A(:,:,3)) / 3;
grey_img = imshow(grey);
caption = sprintf('Grey Scale');
title(caption, 'FontSize', 14);
drawnow;
imwrite(grey,'gray.jpg')
