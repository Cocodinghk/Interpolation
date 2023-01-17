name = 'fig3';
img_name = ['data/' name '.jpg'];
img_nearest_name = ['data/' name '_res32_nearest.jpg'];
img_bilinear_name = ['data/' name '_res32_bilinear.jpg'];
img_rbf1_name = ['data/' name '_res32_rbf1.jpg'];
img_rbf2_name = ['data/' name '_res32_rbf2.jpg'];

%%
img = double(imread(img_name)) / 255;
img_res_nearest = double(imread(img_nearest_name)) / 255;
img_res_bilinear = double(imread(img_bilinear_name)) / 255;
img_res_rbf_1 = double(imread(img_rbf1_name)) / 255;
img_res_rbf_2 = double(imread(img_rbf2_name)) / 255;

%%
nearestVal(1) = criteria(img, img_res_nearest, 1);
bilinearVal(1) = criteria(img, img_res_bilinear, 1);
rbfVal1(1) = criteria(img, img_res_rbf_1, 1);
rbfVal2(1) = criteria(img, img_res_rbf_2, 1);
disp(nearestVal(1))
disp(bilinearVal(1))
disp(rbfVal1(1))
disp(rbfVal2(1))

nearestVal(2) = criteria(img, img_res_nearest, 2);
bilinearVal(2) = criteria(img, img_res_bilinear, 2);
rbfVal1(2) = criteria(img, img_res_rbf_1, 2);
rbfVal2(2) = criteria(img, img_res_rbf_2, 2);
disp(nearestVal(2))
disp(bilinearVal(2))
disp(rbfVal1(2))
disp(rbfVal2(2))

nearestVal(3) = criteria(img, img_res_nearest, 3);
bilinearVal(3) = criteria(img, img_res_bilinear, 3);
rbfVal1(3) = criteria(img, img_res_rbf_1, 3);
rbfVal2(3) = criteria(img, img_res_rbf_2, 3);
disp(nearestVal(3))
disp(bilinearVal(3))
disp(rbfVal1(3))
disp(rbfVal2(3))
x = 1:3;
plot(x, nearestVal);
hold on;
plot(x, bilinearVal);
hold on;
plot(x, rbfVal1);
hold on;
plot(x, rbfVal2);
hold on;
legend('nearest', 'bilinear', 'rbf_gaussian', 'rbf_iq');