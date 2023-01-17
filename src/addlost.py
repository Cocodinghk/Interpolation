import cv2
import numpy as np
from numpy import random
name='fig2'
img_name='./data/'+  name + '.jpg'
img_lost_name='./data/' + name + '_lost32.jpg'

#这里的rate想变成多少都行
rate=0.7
#img归一化
img=np.double(cv2.imread(img_name))/255
row,col,dim=np.shape(img)
notLost=random.random(size=(row,col))
notLost[notLost<=rate]=0
for i in range(0,row):
    for j in range(0,col):
        if(notLost[i,j]==0):
            for k in range(0,dim):
                img[i,j,k]=1

img=np.double(img)*255
cv2.imwrite(img_lost_name,img)