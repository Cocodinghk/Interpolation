function [ res, notLostRes ] = rbf_it( img, notLost, method)
    % RBF 
    maxIt = 50;
    [rowNum, colNum, ~] = size(img);
    imgSize = rowNum * colNum;
    res = img;
    notLostRes = notLost;
    for i = 1:maxIt
        lostSize = imgSize - size(find(notLostRes), 1);
        if (lostSize > (imgSize / 1000))
            [res, notLostRes] = rbf(res, notLostRes, method);
        else
            break
        end
    end
end

