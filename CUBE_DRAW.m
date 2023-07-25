clear all;

 

vert = [-0.5 -0.5 -0.5;  ...

        -0.5 0.5 -0.5;  ...

         0.5 0.5 -0.5;  ...

         0.5 -0.5 -0.5; ...

        -0.5 -0.5 0.5; ...

         -0.5 0.5 0.5;  ...

          0.5 0.5 0.5; ...

          0.5 -0.5 0.5];

   

fac = [1 2 3 4; ...

    2 6 7 3; ...

    4 3 7 8; ...

    1 5 8 4; ...

    1 2 6 5; ...

    5 6 7 8];

 

% original object

subplot(2,4,1);

patch('Faces',fac,'Vertices',vert,'FaceColor','r');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(30,30);

title('original');

 

% view along y-axis (x-z plane)

subplot(2,4,2);

patch('Faces',fac,'Vertices',vert,'FaceColor','r');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(0,0);

title('x-z plane');

 

% view along x-axis (y-z plane)

subplot(2,4,5);

patch('Faces',fac,'Vertices',vert,'FaceColor','r');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(90,0);

title('y-z plane');

 

% view along z-axis (x-y plane)

subplot(2,4,6);

patch('Faces',fac,'Vertices',vert,'FaceColor','r');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(0,90);

title('x-z plane');

 

% transformed object

phi = pi/6;

TxMatrix = [1     0        0    ; ...

            0 cos(phi) -sin(phi); ...

            0 sin(phi) cos(phi)];

TxVertices = TxMatrix * vert';

TxVertices = TxVertices';

 

% transformed object

subplot(2,4,3);

patch('Faces',fac,'Vertices',TxVertices,'FaceColor','b');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(30,30);

title('transformed');

 

% view along y-axis (x-z plane)

subplot(2,4,4);

patch('Faces',fac,'Vertices',TxVertices,'FaceColor','b');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(0,0);

title('x-z plane');

 

% view along x-axis (y-z plane)

subplot(2,4,7);

patch('Faces',fac,'Vertices',TxVertices,'FaceColor','b');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(90,0);

title('y-z plane');

 

% view along z-axis (x-y plane)

subplot(2,4,8);

patch('Faces',fac,'Vertices',TxVertices,'FaceColor','b');  

axis([-2 2 -2 2 -2 2]);

grid();

material shiny;

alpha('color');

alphamap('rampdown');

view(0,90);

title('x-z plane');