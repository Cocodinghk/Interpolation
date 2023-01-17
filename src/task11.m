%%
clc
clear
close

%%
name = 'fig1';
img_name = ['data/' name '.jpg'];
img_lost_name = ['data/' name '_lost31.jpg'];
img_res_nearest_name = ['data/' name '_res11_nearest.jpg'];
img_res_bilinear_name = ['data/' name '_res11_bilinear.jpg'];
img_res_rbf1_name = ['data/' name '_res11_rbf1.jpg'];
img_res_rbf2_name = ['data/' name '_res11_rbf2.jpg'];

%%
img = double(imread(img_name)) / 255;
[rowNum, colNum, ~] = size(img);
imgSize = rowNum * colNum;

img_lost = double(imread(img_lost_name)) / 255;
notLost = (sum(abs(img - img_lost), 3) < 0.01);
[img_res_nearest, ~] = nearest(img_lost, notLost);
[img_res_bilinear, ~] = bilinear(img_lost, notLost);
[img_res_rbf_1, ~] = rbf_it(img_lost, notLost, 1);
[img_res_rbf_2, ~] = rbf_it(img_lost, notLost, 2);

imwrite(img_res_nearest, img_res_nearest_name);
imwrite(img_res_bilinear, img_res_bilinear_name);
imwrite(img_res_rbf_1, img_res_rbf1_name);
imwrite(img_res_rbf_2, img_res_rbf2_name);
%%
subplot(2, 3, 1);
imshow(imread(img_name)); title('Original');
subplot(2, 3, 2);
imshow(imread(img_lost_name)); title('Scribbles');
subplot(2, 3, 3);
imshow(imread(img_res_nearest_name)); title('Nearest Neighbor');
subplot(2, 3, 4);
imshow(imread(img_res_bilinear_name)); title('Bilinear');
subplot(2, 3, 5);
imshow(imread(img_res_rbf1_name)); title('RBF-Gaussian');
subplot(2, 3, 6);
imshow(imread(img_res_rbf2_name)); title('RBF-Inverse Quadratic');
