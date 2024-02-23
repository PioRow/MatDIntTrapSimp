function [S] = IntTrap(f,a,b,n)
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% funkcja wyznacza przybliżenie całki z funkcji jednej zmiennej f(x)
% na przedziale [a,b] stosując złorząną kwadraturę trapezów na n
% podprzedziałach 

% wyznaczenie kroku kwadratury i jej węzłów
h = ( b - a ) / n;
X = a : h : b;

% skorzystanie ze wzoru na złorzoną kwadrature trapezów
S = (2 * sum(f(X)) - f(X(1)) - f(X(n+1))) * h / 2;

end % function