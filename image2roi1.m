function []= image2roi(fileName,figureNo)
% load image
inputImage=imread(fileName);
%imshow(inputImage);
%test if coolour image 
[rows, columns, numberOfColorChannels] = size(inputImage);

if numberOfColorChannels == 1
    fprintf('it is a grey image d%',columns)
     
else
    fprintf('it is a colour imange %d ,%d ',rows,figureNo)     
      red = inputImage(:,:,1);
      z = zeros(size(red));
      green = inputImage(:,:,2);
      blue = inputImage(:,:,3);
      figure ,imshow(green);
    
end                                                                         
