syms x y a1 a2;
%(?(X-x1)�+(Y-y1)�)-(?(X-x2)�+(Y-y2)�)-?t12*V
%(?(X-x3)�+(Y-y3)�)-(?(X-x2)�+(Y-y2)�)-?t32*V
eq1=(((((x).^2)+((y).^2)).^(0.5))-((((x-1.5).^2)+((y).^2)).^(0.5)))==343*.00437;
eq2=(((((x-0.5).^2)+((y+0.5).^2)).^(0.5))-((((x-1.5).^2)+((y).^2)).^(0.5)))==343*0.003125;
eqs = [eq1, eq2];
[x,y]=vpasolve(eqs,[x,y]);
disp("x:");
disp(x);
disp("y:");
disp(y);

%check the result (if a1 and a2 == 0 the result is true)
eq11=(((((x).^2)+((y).^2)).^(0.5))-((((x-1.5).^2)+((y).^2)).^(0.5)))-343*.00437==a1;
eq22=(((((x-0.5).^2)+((y+0.5).^2)).^(0.5))-((((x-1.5).^2)+((y).^2)).^(0.5)))-343*0.003125==a2;
eqs = [eq11, eq22];
[a1,a2]=vpasolve(eqs,[a1,a2]);
disp("a1:");
disp(a1);
disp("a2:");
disp(a2);

