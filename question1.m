clear all;
clc;
%tm=[1 0 3;0 1 3;0 0 1];
n= input('Enter the no. of vertices of the polygon= ');
switch(n)
    case 3
        x1 = input('x coordinate of vertex A= ');
        y1 = input('y coordinate of vertex A= ');
        x2 = input('x coordinate of vertex B= ');
        y2 = input('y coordinate of vertex B= ');
        x3 = input('x coordinate of vertex C= ');
        y3 = input('y coordinate of vertex C= ');
        x = [x1 x2 x3];
        y = [y1 y2 y3];
        m = [x1 x2 x3;y1 y2 y3;1 1 1];
        
    case 4
        x1 = input('x coordinate of vertex A= ');
        y1 = input('y coordinate of vertex A= ');
        x2 = input('x coordinate of vertex B= ');
        y2 = input('y coordinate of vertex B= ');
        x3 = input('x coordinate of vertex C= ');
        y3 = input('y coordinate of vertex C= ');
        x4 = input('x coordinate of vertex D= ');
        y4 = input('y coordinate of vertex D= ');
        x = [x1 x2 x3 x4];
        y = [y1 y2 y3 y4];
        m = [x1 x2 x3 x4;y1 y2 y3 y4;1 1 1 1];
        
otherwise
        warning('no. of input vertices can not be more than 4');
end
patch(x,y,[0 0 0]);
title('Original polygon');
 
%----transform matrices input----
disp('Please enter all the transform matrices must be in homogeneous coordinates');
TT = input('Enter the translational transform matrix= ');
TE = input('Enter the euclidian transform matrix= ');
TS = input('Enter the similarity transform matrix= ');
TA = input('Enter the affine transform matrix= ');
TP = input('Enter the projective tranform matrix= ');
 
%----Transformations----
T = TT*m;
E = TE*m;
S = TS*m;
A = TA*m;
P = TP*m;
 
%----Plotting----
switch(n)
    case 3
        figure;
        patch(x,y,[0 0 0])
        patch([T(1,1) T(1,2) T(1,3)],[T(2,1) T(2,2) T(2,3)],[0 0 0]);
        title('Translation Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([E(1,1) E(1,2) E(1,3)],[E(2,1) E(2,2) E(2,3)],[0 0 0]);
        title('Euclidian Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([S(1,1) S(1,2) S(1,3)],[S(2,1) S(2,2) S(2,3)],[0 0 0]);
        title('Similarity Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([A(1,1) A(1,2) A(1,3)],[A(2,1) A(2,2) A(2,3)],[0 0 0]);
        title('Affine Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([P(1,1)/P(3,1) P(1,2)/P(3,2) P(1,3)/P(3,3)],[P(2,1)/P(3,1) P(2,2)/P(3,2) P(2,3)/P(3,3)],[0 0 0]);
        title('Projective Transformation');
        
    case 4
        figure;
        patch(x,y,[0 0 0])
        patch([T(1,1) T(1,2) T(1,3) T(1,4)],[T(2,1) T(2,2) T(2,3) T(2,4)],[0 0 0]);
        title('Translation Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([E(1,1) E(1,2) E(1,3) E(1,4)],[E(2,1) E(2,2) E(2,3) E(2,4)],[0 0 0]);
        title('Euclidian Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([S(1,1) S(1,2) S(1,3) S(1,4)],[S(2,1) S(2,2) S(2,3) S(2,4)],[0 0 0]);
        title('Similarity Transformation');
        figure;
        patch(x,y,[0 0 0])
        patch([A(1,1) A(1,2) A(1,3) A(1,4)],[A(2,1) A(2,2) A(2,3) A(1,4)],[0 0 0]);
        title('Affine Transformation');
        figure;
        patch(x,y,[0 0 0])
       patch([P(1,1)/P(3,1) P(1,2)/P(3,2) P(1,3)/P(3,3) P(1,4)/P(3,4)],[P(2,1)/P(3,1) P(2,2)/P(3,2) P(2,3)/P(3,3) P(2,4)/P(3,4)],[0 0 0]);
        title('Projective Transformation');
end