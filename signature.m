function [sig]=signature(image)
%imshow(image);
J = imresize(image,[128 128]);
gray=rgb2gray(J);
HSV=rgb2hsv(J);
%figure,imshow(hsv);
t=wpdec2(gray,2,'haar');
sig(1:40)=0;
cfs(1:16)=0;
for j=1:16
    h=j-1;
    
m=mean(wpcoef(t,[2 h]));
m=mean(m);
cfs(1,j)=m;
sig(1,j)=m;
end
j=j+1;
H = HSV(:,:,1);
S = HSV(:,:,2);
V = HSV(:,:,3);

hHist = hist(H(:),18);
for i=1:18
    sig(1,j)=hHist(1,i);
    j=j+1;
end
sHist = hist(S(:),3);
for i=1:3
    sig(1,j)=sHist(1,i);
    j=j+1;
end
vHist = hist(V(:),3);
for i=1:3
    sig(1,j)=vHist(1,i);
    j=j+1;
end
sig;
