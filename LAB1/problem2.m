
function []= problem2()
    imageinput='flower_1298.jpg';
%     problem2a(imageinput);
   problem2b(imageinput)
%     problem2c(imageinput)
    problem2d(imageinput)
end

function []= problem2a(inputimage)
    imageinfo=imfinfo(inputimage);
    imageinfo
end

function []= problem2b(inputimage)
    a=imread(inputimage);
    [x,y,z]=size(a);
%         get the red component
    redimage=reshape(a(:,:,1),x,y);
    greenimage=reshape(a(:,:,2),x,y);
    blueimage=reshape(a(:,:,3),x,y);
    greyscaleImage=rgb2gray(a);

    figure('name','SplitColorImageToRGBChannel');
    subplot(2,2,1), imshow(a,'Border','tight'), title('input image');
    subplot(2,2,2), imshow(redimage,'Border','tight'), title('Red Image');
    subplot(2,2,3), imshow(greenimage,'Border','tight'), title('Green  Image');
    subplot(2,2,4), imshow(blueimage,'Border','tight'), title('Blue Image');
    figure('name','Grey scale image')
    subplot(1,1,1), imshow(greyscaleImage,'Border','tight'), title('greyscale Image');

    % figure, imshow(a), figure, imshow(greyscaleImage);
end


function []= problem2c(inputimage)
%     figure('name','diferent jpeg image qualities ');
      p=[10,20,30,40,50,60,70,80,90,95];
      a=imread(inputimage);  
%       loop throught the quality array p and for each quality element
%       write to file
      count=0;
      imageSizeVector=[];
      for idx = 1:numel(p)
         element = p(idx);
         imageFilename=['testImage' num2str(element) '.jpg'];
         
         imwrite(a,imageFilename,'jpeg','Quality',element);
%  ===================================================
         %print the images in order of quality in a figure
%          count=count+1;
%          resulImage=imread(imageFilename);
%          subplot(2,5,count), imshow(resulImage,'Border','tight'), title(imageFilename);
% ==========================================================
         %prepare an array of sizes to plot
         fileinfo = dir(imageFilename); 
         filesize = fileinfo(1).bytes;
         imageSizeVector=[imageSizeVector,filesize];
      end
      figure(1)
         subplot(1,2,1), imshow(imread('testImage50.jpg'),'Border','tight'), title('testImage at quality 50');
         subplot(1,2,2), imshow(imread('testImage95.jpg'),'Border','tight'), title('testImage at quality 95');

      figure(2)
      
      plot(p,imageSizeVector)
      xlabel('image quality');
      ylabel('File size');
      title('image quality vs file size ');
end


function []= problem2d(inputimage)
      figure
      imagematrix=imread(inputimage);  
      imageMask=im2bw(imagematrix);
%       get the red component
      red=imagematrix;
      red(:,:,2:3)=0;
      redMask=im2bw(red,64/255);
      subplot(2,2,1), imshow(redMask,'Border','tight'), title('Red  Image');
     

      green=imagematrix;
      green(:,:,3)=0;
      green(:,:,1)=0;
      greenMask=im2bw(green);
      subplot(2,2,2), imshow(greenMask,'Border','tight'), title('Green  Image');
      
      blue=imagematrix;
      blue(:,:,1:2)=0;
      blueMask=im2bw(blue,16/255);
      subplot(2,2,3), imshow(blueMask,'Border','tight'), title('Blue  Image');
      
      Fmask = blueMask + redMask;
      subplot(2,2,4), imshow(Fmask,'Border','tight'), title('Fmasked  Image');  


%       Fmask = Bmask or Rmask.
end 



%
