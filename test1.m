function [] = test1()
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% test metody 1

% Definicja funkcji, wyliczenie przybliżonych całek metodą i wartości
% dokładne
f = @(x,y) 1  + x .* 0;
g = @(x,y) x;
s0 = P1Z35_PRO_DIntTrapSimp(f,0,5,0,1,1);
s1 = P1Z35_PRO_DIntTrapSimp(g,0,5,0,1,1);
h = @(x,y) x .^ 2;
s2 = P1Z35_PRO_DIntTrapSimp(h,0,5,0,1,1);
I0 = 5;
I1 = 25 / 2;
I2 = 125 / 3;

fprintf("test sprawdza rząd kwadratury użytej dla zmiennej x. Rząd powinien wynosić 2. \n" + ...
    "\nzałóżmy że rozważane funkcje nie będą zależne od zmiennej y, \na przedział całkowania po niej wynosić będzie [0,1].\n" + ...
    "Przy takich założeniach wynik będzie zależał wyłącznie \nod kwadratury zmiennej x");
fprintf("\n\n zdefinujmy  funkccje f(x,y)=1 i g(x,y)=x\n\n" + ...
    "wyznaczmy teraz przybliżenia tych całek na obszarze [0,5] × [0,1] " + ...
    "\nnie dzieląc [0,5] na podrzedziały.spodziewamy się że wyniki będą dokładne\n");
fprintf("\n%10s|%20s|%20s|%5s \n","funkcja","wartość wyznaczona ","wartość dokładna", "błąd" );
fprintf("%10s|%20.10f|%20.10f|%5.2e\n","f(x,y) = 1",s0,I0,I0-s0);
fprintf("%10s|%20.10f|%20.10f|%5.2e\n","g(x,y) = x",s1,I1,I1-s1);
fprintf("\ndowolną całkę wielomianową stopnia <=1  na dowolnym obszarze [a,b]×[0,1] \n" + ...
    "jesteśmy w stanie otrzymać po przez kombinację liniową wyznaczonych całek,");
input('\n');
fprintf("weźmy teraz  funkcję h(x,y)=x^2 i przybliżmy jej całkę na obszarze\n[0,5]×[[0,1], " + ...%
    "nie dzieląc [0,5] na podprzedziały wynik nie powinien być\ndokładny \n");
fprintf("\n%10s|%20s|%20s|%5s \n","funkcja","wartość wyznaczona ","wartość dokładna", "błąd" );
fprintf("%10s|%20.10f|%20.10f|%5.2e\n","h(x,y)=x^2",s2,I2,I2-s2);


end

