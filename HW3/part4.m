I = imread('image3part4.jpg');
GX_mat = [1 0 -1; 2 0 -2; 1 0 -1];
GY_mat = [1 2 1; 0 0 0; -1 -2 -1];

GX_R = conv2(GX_mat, I(:, :, 1));
GX_G = conv2(GX_mat, I(:, :, 2));
GX_B = conv2(GX_mat, I(:, :, 3));

GY_R = conv2(GY_mat, I(:, :, 1));
GY_G = conv2(GY_mat, I(:, :, 2));
GY_B = conv2(GY_mat, I(:, :, 3));

GX = zeros(size(GX_R,1), size(GX_R,2), 3);
GY = zeros(size(GY_R,1), size(GY_R,2), 3);

GX(:,:,1) = GX_R;
GX(:,:,2) = GX_G;
GX(:,:,3) = GX_B;

GY(:,:,1) = GY_R;
GY(:,:,2) = GY_G;
GY(:,:,3) = GY_B;

G = uint8(sqrt(GX.^2 + GY.^2));

I_img = imshow(I);
caption = sprintf('Original I');
title(caption, 'FontSize', 14);
drawnow;

waitfor(I_img);
G_img = imshow(G);
caption = sprintf('Edge Detected I');
title(caption, 'FontSize', 14);
drawnow;