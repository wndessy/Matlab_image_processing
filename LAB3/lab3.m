% this is for lab theree matlam worl
%function lab3 is the main function from which all others are called

function []=lab3()
% test fro problem 3
% ---------------------------
%     images()
%test for problem 4
% % ------------------------------------
inputImage = imread('christmas.png'); 
histogram_stretching(inputImage)





%problem 3b
%==================================================================
%function for computing histogram stretching based on an equestion 
%each pixel value is modified based on the equation
function []= histogram_stretching(inputImage)
        inputImage=rgb2gray(inputImage);
        gmin=min(min(inputImage));
        gmax=max(max(inputImage));
        [M,N]= size(inputImage);
        outputImage=zeros(M:N);
        for m = 1:M 
            for n = 1:N
              gold=inputImage(m,n);
              aa=double(gold-gmin);
              bb=double(gmax-gmin);
              gnew=floor((aa/bb)*256+0.5);
              outputImage(m,n)=uint8(gnew);
            end
        end
%         figure 
%         subplot(1,2,1)
%         subplot(1,2,2)
%         imshow(inputImage)
%         
%         
        
           
        subplot(1,2,1)
        imshow(inputImage);
        title('input image')
        subplot(1,2,2)
        imshow(uint8(outputImage));
        title('output image')



     
%problem 4 
% ==============================
% 4 a) and b
% finding histograms for images .
function [] = images()
   histograms(imread('pout.tif'),1)
   histograms(imread('tire.tif'),5)
   histograms(rgb2gray(imread('restaurantSpain.jpg')),9)
   histograms(rgb2gray(imread('waterfall2.jpg')),13)

   
%    imshow(im3grey)
function [] = histograms(imageInput, figureNo)
        subplot(4,4,figureNo)
        imshow(imageInput)
        title('input image')
        subplot(4,4,figureNo+1)
        imhist(imageInput,256)
        title('input image hist')
        subplot(4,4,figureNo+2)
        imeq = histeq(imageInput);
        imshow(imeq)
        title('equalized image')
        subplot(4,4,figureNo+3)
        imhist(imeq,256)  
        title('equalized image hist')

     
        
        
        
        
        
        
        
        
        


        
        
