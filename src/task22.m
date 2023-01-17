name = 'fig3';
img_name = ['data/' name '.jpg'];

img = double(imread(img_name)) / 255;
[rowNum, colNum, ~] = size(img);
imgSize = rowNum * colNum;

n = 9;
nearestVal1 = 1:n;
bilinearVal1 = 1:n;
rbf1Val1 = 1:n;
rbf2Val1 = 1:n;
nearestVal2 = 1:n;
bilinearVal2 = 1:n;
rbf1Val2 = 1:n;
rbf2Val2 = 1:n;
nearestVal3 = 1:n;
bilinearVal3 = 1:n;
rbf1Val3 = 1:n;
rbf2Val3 = 1:n;
for i = 1:n
    rate = 0.1 * i;
    notLost = rand(rowNum, colNum);
    notLost = (notLost > rate);
    [img_res_nearest, ~] = nearest(img, notLost);
    [img_res_bilinear, ~] = bilinear(img, notLost);
    [img_res_rbf_gaussian, ~] = rbf_it(img, notLost, 1);
    [img_res_rbf_iq, ~] = rbf_it(img, notLost, 2);
    nearestVal1(i) = criteria(img, img_res_nearest, 1);
    bilinearVal1(i) = criteria(img, img_res_bilinear, 1);
    rbf1Val1(i) = criteria(img, img_res_rbf_gaussian, 1);
    rbf2Val1(i) = criteria(img, img_res_rbf_iq, 1);
    nearestVal2(i) = criteria(img, img_res_nearest, 2);
    bilinearVal2(i) = criteria(img, img_res_bilinear, 2);
    rbf1Val2(i) = criteria(img, img_res_rbf_gaussian, 2);
    rbf2Val2(i) = criteria(img, img_res_rbf_iq, 2);
    nearestVal3(i) = criteria(img, img_res_nearest, 3);
    bilinearVal3(i) = criteria(img, img_res_bilinear, 3);
    rbf1Val3(i) = criteria(img, img_res_rbf_gaussian, 3);
    rbf2Val3(i) = criteria(img, img_res_rbf_iq, 3);
end

%%
x = 0.1:0.1:0.9;
subplot(2, 3, 1);
plot(x, nearestVal1);
hold on;
plot(x, bilinearVal1);
hold on;
plot(x, rbf1Val1);
hold on;
plot(x, rbf2Val1);
hold on;
legend('Nearest neighbor', 'Bilinear', 'RBF-Gaussian', 'RBF-Inversed quadratic');
title('MSE of Fig 3')

subplot(2, 3, 2);
plot(x, nearestVal2);
hold on;
plot(x, bilinearVal2);
hold on;
plot(x, rbf1Val2);
hold on;
plot(x, rbf2Val2);
hold on;
legend('Nearest neighbor', 'Bilinear', 'RBF-Gaussian', 'RBF-Inversed quadratic');
title('PSNR of Fig 3')

subplot(2, 3, 3);
plot(x, nearestVal3);
hold on;
plot(x, bilinearVal3);
hold on;
plot(x, rbf1Val3);
hold on;
plot(x, rbf2Val3);
hold on;
legend('Nearest neighbor', 'Bilinear', 'RBF-Gaussian', 'RBF-Inversed quadratic');
title('SSIM of Fig 3')

