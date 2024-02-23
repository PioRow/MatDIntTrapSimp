function[S1,S2,S3,S4,S5,S6,e1,e2,e3] =TestyNumeryczne()
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% obliczenia do testów numerycznych

% funkcje  z tabeli 1
f1 = @(x,y) atan(x.*y);
I1 = 1/4*(pi-log(4))-pi^2/48;
f2= @(x,y) exp(x.^2+y.^1).*3.*x.*y./7;
I2=(3/14)*(exp(1)-1);
f3 = @(x,y) 2.*y.^4 +x.^2.*y.^2+6.*x.^3;
I3=181/90;
s1=zeros(10,1);
s2=zeros(8,1);
s3=zeros(8,1);
for i=1:4
    s1(i)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,200*i,1000-200*i);
    s2(i)=P1Z35_PRO_DIntTrapSimp(f2,0,1,0,1,100*i,1000-100*i);
    s3(i)=P1Z35_PRO_DIntTrapSimp(f3,0,1,0,1,100*i,1000-100*i);
end
    s1(5)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,900,100);
    s2(5)=P1Z35_PRO_DIntTrapSimp(f2,0,1,0,1,900,100);
    s3(5)=P1Z35_PRO_DIntTrapSimp(f3,0,1,0,1,900,100);
      s1(6)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,950,50);
    s2(6)=P1Z35_PRO_DIntTrapSimp(f2,0,1,0,1,950,50);
    s3(6)=P1Z35_PRO_DIntTrapSimp(f3,0,1,0,1,950,50);
    s2(7)=P1Z35_PRO_DIntTrapSimp(f2,0,1,0,1,975,25);
    s1(7)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,975,25);
    s3(7)=P1Z35_PRO_DIntTrapSimp(f3,0,1,0,1,975,25);
    s1(8)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,985,15);
    s2(8)=P1Z35_PRO_DIntTrapSimp(f2,0,1,0,1,985,15);
    s3(8)=P1Z35_PRO_DIntTrapSimp(f3,0,1,0,1,985,15);
    s1(9)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,990,10);
    s1(10)=P1Z35_PRO_DIntTrapSimp(f1,0,1,0,1,993,7);
   
e1=I1-s1;
e2=I2-s2;
e3=I3-s3;
% pomiary do tabeli 2   


f4=@(x,y)sqrt(x.^2+y.^2);
f5=@(x,y)sin(x).*2.*y+cos(2.*y).*x;
f6=@(x,y) x.^2/(y.^2+1);
I1=2.5299118498769728972884643591409946110598226311777771589249035591;
I2=3/14*(exp(2)-1)*(1+exp(1)^2)^2;
I3=3632/45;
I4=8/3*(sqrt(2)+asinh(1));
I5=8*sin(1)^2+sin(4);
I6=8/3*atan(2);
tic
S1=P1Z35_PRO_DIntTrapSimp(f1,0,2,0,2,8000,200)-I1;
toc

tic

S2=P1Z35_PRO_DIntTrapSimp(f2,0,2,0,2,256000,6400)-I2;

toc
tic
S3=P1Z35_PRO_DIntTrapSimp(f3,0,2,0,2,92000,2300)-I3;
toc
tic
S4=P1Z35_PRO_DIntTrapSimp(f4,0,2,0,2,12000,300)-I4;
toc

tic
S5=P1Z35_PRO_DIntTrapSimp(f5,0,2,0,2,16000,400)-I5;
toc

tic
S6=P1Z35_PRO_DIntTrapSimp(f6,0,2,0,2,16000,400)-I6;
toc


