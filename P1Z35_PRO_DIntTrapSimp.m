function [S] = P1Z35_PRO_DIntTrapSimp(f,a,b,c,d,n,m)
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% 
% Obliczanie całki podwójnej z funkcji dwóch zmiennych f(x,y) na
% prostokącie D = [a,b] × [c,d] stosując złożoną kwadraturę trapezów
% ze względu na zmienną x i złożoną kwadraturę Simpsona ze względu na 
% zmienną y
% Wejście:
%    f    - uchwyt do funkcji dwóch zmiennych, której całka ma być 
%           przybliżana (powinna móc przyjmować wektory argumentów)
%    a    - początek przedziału całkowania po zmiennej x
%    b    - koniec przedziału całkowania po zmiennej x
%    c    - początek przedziału całkowania po zmiennej y
%    d    - koniec przedziału całkowania po zmiennej y
%    n    - ilość podprzedziałów kwadratury trapezów (domyślnie n = 1e3)
%    m    - ilość podprzedziałów kwadratury Simpsona (domyślnie m = 5e2)
% Wyjście:
%    S    - wyznaczone przybliżenie całki

% Ustawienie argumentów domyślnych
if nargin <= 5
    n = 1e3;
end

if nargin <= 6
    m = 5e2;
end

% Szukaną całkę wyznaczać będziemy stosując złożoną kawadraturę Simpsona
% dla zmiennej y na przedziale [c,d] złorzonej z m podprzedziałów dla 
% funkcji podcałkowej z wyrażenia (1) w raporcie. Wartością tejże funkcji w 
% węźle yi i=0,1...2m+1 jest złorzoną kwadratura trapezów z funkcji 
% g(x):=f(x,yi) na przedziale [a,b], opartą na n podprzedziałach.

% Wyznaczenie kroku, wektora węzłów oraz wektora współczynników dla
% złorzonej kwadratury Simpsona
H2 = (d - c) / (2 * m);
Y = c : H2 : d;
SC = 2 .* ones(size(Y));
SC(1) = 1;
SC(2*m+1) = 1;
SC(2:2:2*m) = 4;

S=0;
for i=1:length(Y)
    % definiowanie funkcji funkcji g dla każdego węzła yi, obliczanie jej
    % wartości w węźle, wymnożenie przez współczynnik i zsumowanie do
    % wyniku
    g = @(x) f(x,Y(i));
    S = S + SC(i) * IntTrap(g,a,b,n);
end

% przemnożenie wyniku przez współczynniki niezależne od wezła i jego
% wartości
S = S * H2 / 3;

end % function