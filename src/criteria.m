function [ c ] = criteria( a, b, method )
    if (method == 1)
        c = mean(mse(a-b));
    elseif (method == 2)
        c = psnr(b, a);
    elseif (method == 3)
        [c, ~] = ssim(b, a);
    end
end
