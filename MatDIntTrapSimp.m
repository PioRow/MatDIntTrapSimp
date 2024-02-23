function [S] = MatDIntTrapSimp(f,a,b,c,d,n,m)
if nargin <= 5
    n = 1e3;
end

if nargin <= 6
    m = 5e2;
end
tic
H1 = (b - a) / n;
H2 = (d - c) / (2 * m);
X = a : H1 : b;
Y = c : H2 : d;

% Obliczenie macierzy wartości funkcji w kombinacjach elementów wektora X
% i Y. F(i,j)=f(X(i),Y(j))

F = f(X,Y');

% Towrzenie wektorów współczynników, gdzie TC-wspólczynniki złorzonej
% kwadratury Trapezów SC-współczynniki złorzonej kwadratury Simpsona
TC = 2.*ones(size(X));
TC(1)=1;
TC(n+1)=1;
SC=2.*ones(size(Y'));
SC(1)=1;
SC(2*m+1)=1;
SC(2:2:2*m)=4;

% wymnożenie każdego współczynnika przez odpowiednią stałą (jak w wyrażeniu
% (3) z raportu)
F=F.*SC;
F=F.*TC;

% zsumowanie wszystkich iloczynów węzeł-waga i wymnożenie wyniku przez
% stałe tożsame dla wszytkich węzłów
S=sum(F,[1,2]);
S=S*H1*H2;
S=S/6;
toc
end % function