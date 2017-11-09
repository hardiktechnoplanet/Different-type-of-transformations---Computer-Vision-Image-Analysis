clc
close all
clear all
Q = ones(378,330);
A = imread('KittyBW.png');
% for 2-d translation
%prompt = ('input the value for translation  ');
%T=[1  0  2 ; 0  1  2 ; 0  0  1];                         %Translation
%T=[0.819  -0.573  2 ; 0.573  0.819  2 ; 0  0  1];       %Euclidian
%T=[0.649  -0.375  2 ; 0.375  0.649  2 ; 0  0  1];       %Similarity  
%T=[0.649  0.5  2 ; 0.375  0.5  2 ; 0  0  1];            %Affine
T=[0.649  -0.5  5 ; 0.375  0.5  5 ; 0.3  0.3  0.8];     %Projective
%t = input(prompt);
for i=1:378
    for j=1:330
        if (A(i,j)== 0)
            p = [i;j;1];
            %ppr = [eye(2) , t ; 0 0 1]*p;
           pp=T*p;
           pp = abs(round(pp));
            Q(pp(1),pp(2)) = 0;
        end
    end
end
figure
imshow(A)
imshow(Q)
