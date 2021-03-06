//Ex4_21
//Image Enhancement using High frequency Emphasis Filtering
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods


clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).

function[H]=lowpassfilter(type1,M,N,D0,n)//lowpassfilter is used to filter an image .
    u=0:(M-1);
    v=0:(N-1);
    idx=find(u&gt;M/2);
    u(idx)=u(idx)-M;
    idy=find(v&gt;N/2);
    v(idy)=v(idy)-N;
    [U,V]=meshgrid(v,u);
    D=sqrt(U.^2+V.^2);
    select type1
        
    case'ideal'
        H=double(D&lt;=D0);
        
        case'Laplacian'
        H=1+(4*(%pi)^2*D^2);

        
    case'butterworth'
        if argn(2)==4 
            n=1;
        end
        H = ones(M,N)./(1+(D./D0).^(2*n));
        
        case'gaussian'
        H=exp(-(D.^2)./(2*(D0^2)));
    else
        disp('Unknownfiltertype.')
    end
endfunction



///////////////////////////////////   Main Programm   ////////////////////////////////
a=imread("Ex4_21.tif");
//gray=rgb2gray(a);
gray=im2double(imresize(a,[540 540]));

figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)
figure,ShowImage(inm,'Frequency Spectrum');
title('Frequency Spectrum','color','blue','fontsize',4);

//////////////////////////////////  Filtering With Cut-off Frequency 10   ///////////////////////
filt=1-lowpassfilter('gaussian',M,N,40); // User Define Function which generate Filter Mask 
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));
Image_filter=mat2gray(Image_filter)
figure(1),ShowImage(Image_filter,'Filtered Image');
title('Filtered Image (High Pass) with Cut-Off Frequency 40','color','blue','fontsize',4);


/////////////////////  high boost filtering  //////////////////////////////
filt=0.5+(0.75.*(1-lowpassfilter('gaussian',M,N,40,4))); // User Define Function which generate Filter Mask
n=filt.*h;//Multiply the Original Spectrum with the Filter Mask.
Image_filter=real(ifft(n));

Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Specific Cut-Off Frequency','color','blue','fontsize',4);


Image_Enhance=bricontra(Image_filter,180,170,'m'); // Brightness Contrast agjustment (Intensity Transformation)
figure,ShowImage(Image_Enhance,'Filtered Image');
title('Enhance Image','color','blue','fontsize',4);