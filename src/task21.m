%%
clc
clear
close

%%
name = 'fig3';
img_name = ['data/' name '.jpg'];
img_lost1_name = ['data/' name '_lost31.jpg'];
img_lost2_name = ['data/' name '_lost32.jpg'];
img_lost3_name = ['data/' name '_lost33.jpg'];
img_res1_nearest_name = ['data/' name '_res31_nearest.jpg'];
img_res1_bilinear_name = ['data/' name '_res31_bilinear.jpg'];
img_res1_rbf1_name = ['data/' name '_res31_rbf1.jpg'];
img_res1_rbf2_name = ['data/' name '_res31_rbf2.jpg'];
img_res2_nearest_name = ['data/' name '_res32_nearest.jpg'];
img_res2_bilinear_name = ['data/' name '_res32_bilinear.jpg'];
img_res2_rbf1_name = ['data/' name '_res32_rbf1.jpg'];
img_res2_rbf2_name = ['data/' name '_res32_rbf2.jpg'];
img_res3_nearest_name = ['data/' name '_res33_nearest.jpg'];
img_res3_bilinear_name = ['data/' name '_res33_bilinear.jpg'];
img_res3_rbf1_name = ['data/' name '_res33_rbf1.jpg'];
img_res3_rbf2_name = ['data/' name '_res33_rbf2.jpg'];

%%
img = double(imread(img_name)) / 255;
[rowNum, colNum, ~] = size(img);
imgSize = rowNum * colNum;

notLost = rand(rowNum, colNum);
notLost = (notLost > 0.5);
[img_res1_nearest, ~] = nearest(img, notLost);
[img_res1_bilinear, ~] = bilinear(img, notLost);
[img_res1_rbf_1, ~] = rbf_it(img, notLost, 1);
[img_res1_rbf_2, ~] = rbf_it(img, notLost, 2);
imwrite(img_res1_nearest, img_res1_nearest_name);
imwrite(img_res1_bilinear, img_res1_bilinear_name);
imwrite(img_res1_rbf_1, img_res1_rbf1_name);
imwrite(img_res1_rbf_2, img_res1_rbf2_name);

%%
notLost = rand(rowNum, colNum);
notLost = (notLost > 0.7);
[img_res2_nearest, ~] = nearest(img, notLost);
[img_res2_bilinear, ~] = bilinear(img, notLost);
[img_res2_rbf_1, ~] = rbf_it(img, notLost, 1);
[img_res2_rbf_2, ~] = rbf_it(img, notLost, 2);
imwrite(img_res2_nearest, img_res2_nearest_name);
imwrite(img_res2_bilinear, img_res2_bilinear_name);
imwrite(img_res2_rbf_1, img_res2_rbf1_name);
imwrite(img_res2_rbf_2, img_res2_rbf2_name);

notLost = rand(rowNum, colNum);
notLost = (notLost > 0.9);
[img_res3_nearest, ~] = nearest(img, notLost);
[img_res3_bilinear, ~] = bilinear(img, notLost);
[img_res3_rbf_1, ~] = rbf_it(img, notLost, 1);
[img_res3_rbf_2, ~] = rbf_it(img, notLost, 2);
imwrite(img_res3_nearest, img_res3_nearest_name);
imwrite(img_res3_bilinear, img_res3_bilinear_name);
imwrite(img_res3_rbf_1, img_res3_rbf1_name);
imwrite(img_res3_rbf_2, img_res3_rbf2_name);

%%
subplot(3, 5, 1);
imshow(imread(img_lost1_name)); title('50% pixel missing');
subplot(3, 5, 2);
imshow(imread(img_res1_nearest_name)); title('Nearest Neighbor(50%)');
subplot(3, 5, 3);
imshow(imread(img_res1_bilinear_name)); title('Bilinear(50%)');
subplot(3, 5, 4);
imshow(imread(img_res1_rbf1_name)); title('RBF-Gaussian(50%)');
subplot(3, 5, 5);
imshow(imread(img_res1_rbf2_name)); title('RBF-Inverse Quadratic(50%)');

subplot(3, 5, 6);
imshow(imread(img_lost2_name)); title('70% pixel missing');
subplot(3, 5, 7);
imshow(imread(img_res2_nearest_name)); title('Nearest Neighbor(70%)');
subplot(3, 5, 8);
imshow(imread(img_res2_bilinear_name)); title('Bilinear(70%)');
subplot(3, 5, 9);
imshow(imread(img_res2_rbf1_name)); title('RBF-Gaussian(70%)');
subplot(3, 5, 10);
imshow(imread(img_res2_rbf2_name)); title('RBF-Inverse Quadratic(70%)');

subplot(3, 5, 11);
imshow(imread(img_lost3_name)); title('90% pixel missing');
subplot(3, 5, 12);
imshow(imread(img_res3_nearest_name)); title('Nearest Neighbor(90%)');
subplot(3, 5, 13);
imshow(imread(img_res3_bilinear_name)); title('Bilinear(90%)');
subplot(3, 5, 14);
imshow(imread(img_res3_rbf1_name)); title('RBF-Gaussian(90%)');
subplot(3, 5, 15);
imshow(imread(img_res3_rbf2_name)); title('RBF-Inverse Quadratic(90%)');
