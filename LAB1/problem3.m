
function []= problem3()
    imageinput='flower_1298.jpg';
    image2roi(imageinput,1);

end


function []= image2roi(fileName,figureNo)
    inputImage=imread(fileName);
%test if colour image or greyscale
    [rows, columns, numberOfColorChannels] = size(inputImage);
    if numberOfColorChannels == 1;
        fprintf('it is a grey image d%',columns);
    else
          fprintf('it is a colour imange %d ,%d ',rows,figureNo)     
          figure(figureNo),
          imagesc(inputImage);
          
% take in user inputs and check their validity before constructing a
% subimmage from them.
          valid=false;
           while valid==false;
              ulCornerX=input('Enter X cordinate : ');
              ulCornery=input('Enter Y co-ordinate : ');
              roiLength=input('Enter  subumage lenght : ');
              roiWidth=input('Enter subimage width : ');
              if ulCornerX + roiLength < rows && ulCornery +roiWidth < columns ; 
                  valid=true;
                  roi=inputImage(ulCornerX:ulCornerX+roiLength,ulCornery:ulCornery+roiWidth,:);
                  figure(figureNo +1);
                  imagesc(roi);
                  
              else;
                  fprintf('image dimentions entered out of range, try other dimentions\n');
              end
           end
    end
 end                                                                         
