% loading image into matlab workspace
imageinput='flower_1298.jpg';

        %Problem 2 a
        % using imtool, imshow and imread
imageinfo=imfinfo(imageinput);
a=imread(imageinput);
%a(:,:,3)=0;
%a(:,:,2)=0;
%a(:,:,1)=0;
%imshow(a);
redimage=reshape(a(:,:,1),667,500);
%[x,y,z]=size(a);
greyscaleImage=rgb2gray(a);
figure('name','SplitColorImageToRGBChannel');
subplot(3,2,1), imshow(a,'Border','tight'), title('input image');
subplot(3,2,2), imshow(redimage,'Border','tight'), title('Red Image');

subplot(3,2,3), imshow(greyscaleImage,'Border','tight'), title('greyscale Image');

% figure, imshow(a), figure, imshow(greyscaleImage);







%problem 2 b 
%
%
