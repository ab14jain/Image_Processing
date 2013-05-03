clc;
x=input('enter the name for query image:','s');
old=cd('C:\Users\abhi\Desktop\image1.orig');
image=imread(x);
figure,imshow(image);
index(1:40)=0;
index1(1:40)=0;
[sig]=signature(image);

%dig=md5(sig);

i=0;
%[val]=hashing1(image);
%old=cd('C:\Users\abhi\Desktop\image1.orig');
old=cd('C:\Users\abhi\Desktop\image1.orig');
jpgFiles = dir('*.jpg');
l=1;
%dis(2,1000)=0;
%dis1(1,1000)=0;
euc1(2:994)=0;
euc(1:994)=0;
for k = 1:length(jpgFiles)
 % old=cd('C:\Users\abhi\Desktop\image1.orig');
 old=cd('C:\Users\abhi\Desktop\image1.orig');
 filename = jpgFiles(k).name;
  image1 = imread(filename);
  %figure,imshow(image1);
  old=cd('C:\Users\abhi\Desktop\image1.orig');
  [sig1]=signature(image1);
  sum=0;
%for i=1:40
 % dig1=md5(sig1);

%dis(1,k)=hamming(d1,d2);
%dis1(1,k)=dis(1,k);
%dis(2,k)=k;
  for i=1:40
      sum=sum+power((sig(1,i)-sig1(1,i)),2);
    %sum=sum+power((index(1,i)-index1(1,i)),2);
end
euc1(1,l)=sqrt(sum);
euc1(2,l)=k;
euc(1,l)=sqrt(sum);
l=l+1;  
  
end
%sort_dis1=sort(dis1);
figure;
old=cd('C:\Users\abhi\Desktop\image1.orig');
euc;
sort_euc=sort(euc);

for i=1:10
    %old=cd('C:\Users\abhi\Desktop\image1.orig');

    for j=1:length(jpgFiles)
       if(sort_euc(1,i)==euc1(1,j))
          l=euc1(2,j);
         
           old=cd('C:\Users\abhi\Desktop\image1.orig');
            filename = jpgFiles(l).name;
             image1 = imread(filename);
             
             subplot(2,5,i),imshow(image1);
          old=cd('C:\Users\abhi\Desktop\image1.orig');
          
       end
       
    end
end
  old=cd('C:\Users\abhi\Desktop\image1.orig');
%%%%%%%
