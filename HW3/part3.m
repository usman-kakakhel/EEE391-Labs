imgray = imread('gray.jpg');
gaussnoise = 8*randn(size(imgray,1), size(imgray,2));
imgaussnoise = uint8(double(imgray) + gaussnoise);
im = imshow(imgaussnoise);
caption = sprintf('Corrupted Gray Scale with variance = 64');
title(caption, 'FontSize', 14);
drawnow;
%part c
waitfor(im);
M9_mat = median_filter(imgaussnoise, 9);
M9_im = imshow(M9_mat);
caption = sprintf('Gray Scale Median Filtered with M = 9, variance = 64');
title(caption, 'FontSize', 14);
drawnow;

waitfor(M9_im);
M25_mat = median_filter(imgaussnoise, 25);
M25_im = imshow(M25_mat);
caption = sprintf('Gray Scale Median Filtered with M = 25, variance = 64');
title(caption, 'FontSize', 14);
drawnow;

waitfor(M25_im);
M121_mat = median_filter(imgaussnoise, 121);
M121_im = imshow(M121_mat);
caption = sprintf('Gray Scale Median Filtered with M = 121, variance = 64');
title(caption, 'FontSize', 14);
drawnow;
% part d
waitfor(M121_im);
gaussnoise = 32*randn(size(imgray,1), size(imgray,2));
imgaussnoise = uint8(double(imgray) + gaussnoise);
im = imshow(imgaussnoise);
caption = sprintf('Corrupted Gray Scale with variance = 1024');
title(caption, 'FontSize', 14);
drawnow;

waitfor(im);
M9_mat = median_filter(imgaussnoise, 9);
M9_im = imshow(M9_mat);
caption = sprintf('Gray Scale Median Filtered with M = 9, variance = 1024');
title(caption, 'FontSize', 14);
drawnow;

waitfor(M9_im);
M25_mat = median_filter(imgaussnoise, 25);
M25_im = imshow(M25_mat);
caption = sprintf('Gray Scale Median Filtered with M = 25, variance = 1024');
title(caption, 'FontSize', 14);
drawnow;

waitfor(M25_im);
M121_mat = median_filter(imgaussnoise, 121);
M121_im = imshow(M121_mat);
caption = sprintf('Gray Scale Median Filtered with M = 121, variance = 1024');
title(caption, 'FontSize', 14);
drawnow;

%part e salt and pepper noise
waitfor(M121_im);
imsaltnoise = imgray;
noisypixels = rand( size(imgray,1), size(imgray,2) );
imsaltnoise( find( noisypixels <= ( 1 / 16 ) ) ) = 255;
imsaltnoise( find( noisypixels >= ( 15 / 16 ) ) ) = 0;
im = imshow(imsaltnoise);
caption = sprintf('Salt and pepper noise');
title(caption, 'FontSize', 14);
drawnow;
%part f filtering for salt and pepper
waitfor(im);
M9_mat = median_filter(imsaltnoise, 9);
M9_im = imshow(M9_mat);
caption = sprintf('Gray Scale Median Filtered with M = 9 corrupted by salt and pepper');
title(caption, 'FontSize', 14);
drawnow;

waitfor(M9_im);
M25_mat = median_filter(imsaltnoise, 25);
M25_im = imshow(M25_mat);
caption = sprintf('Gray Scale Median Filtered with M = 25 corrupted by salt and pepper');
title(caption, 'FontSize', 14);
drawnow;

waitfor(M25_im);
M121_mat = median_filter(imsaltnoise, 121);
M121_im = imshow(M121_mat);
caption = sprintf('Gray Scale Median Filtered with M = 121 corrupted by salt and pepper');
title(caption, 'FontSize', 14);
drawnow;
