function [] = test2()
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% test metody 2

% Definicja funkcji, wyznaczenie przybliżeń ich całek i wartości dokładne
p0 = @(x,y) 1 + 0 .* x;
p1 = @(x,y) y + 0 .* x;
p2 = @(x,y) y .^ 2 + 0 .* x;
p3 = @(x,y) y .^ 3 + 0 .* x;
p4 = @(x,y) y .^ 4 + 0 .* x;
s0 = P1Z35_PRO_DIntTrapSimp(p0,0,1,0,5,1,1);
s1 = P1Z35_PRO_DIntTrapSimp(p1,0,1,0,5,1,1);
s2 = P1Z35_PRO_DIntTrapSimp(p2,0,1,0,5,1,1);
s3 = P1Z35_PRO_DIntTrapSimp(p3,0,1,0,5,1,1);
s4 = P1Z35_PRO_DIntTrapSimp(p4,0,1,0,5,1,1);
I0 = 5;
I1 = 25 / 2;
I2 = 125 / 3;
I3 = 625 / 4;
I4= 3125 / 5;

fprintf("test sprawdza rząd kwadratury użytej dla zmiennej y.Rząd powinien wynosić 4. \n" + ...
    "\nzałóżmy że rozważane funkcje nie będą zależne od zmiennej x, \n a przedział całkowania po niej wynosić będzie [0,1].\n" + ...
    "Przy takich założeniach wynik będzie zależał wyłącznie \nod kwadratury zmiennej y");
fprintf("\n\n zdefinujmy  funkcje p0(x,y)=1 i p1(x,y)=y\n p2(x,y)=y^2 ,p3(x,y)=x^3" + ...
    " i wyznaczmy  przybliżenia ich całek na obszarze\n[0,1] × [0,5] " + ...
    "nie dzieląc przedziału [0,5] na podrzedziały.\nSpodziewamy się że wyniki będą dokładne\n");
fprintf("\n%12s|%20s|%20s|%5s \n","funkcja","wartość wyznaczona ","wartość dokładna", "błąd" );
fprintf("%12s|%20.10f|%20.10f|%5.2e\n","p0(x,y)=1",s0,I0,I0-s0);
fprintf("%12s|%20.10f|%20.10f|%5.2e\n","p1(x,y)=y",s1,I1,I1-s1);
fprintf("%12s|%20.10f|%20.10f|%5.2e\n","p2(x,y)=y^2",s2,I2,I2-s2);
fprintf("%12s|%20.10f|%20.10f|%5.2e\n","p3(x,y)=y^3",s3,I3,I3-s3);
fprintf("\ndowolną całkę wielomianową stopnia <=3  na dowolnym obszarze  obszarze\n[0,1]×[c,d] " + ...
    "jesteśmy w stanie otrzymać po przez kombinację liniową tych całek");
input('\n');
fprintf("rozważmy teraz funkcje p4(x,y)=y^4 i wyznaczmy przybliżenie\njej całki na obszarze [0,1] × [0,5]." + ...
    "\nSpodziewamy się że wynik będzie niedokładny\n");
fprintf("\n%12s|%20s|%20s|%5s \n","funkcja","wartość wyznaczona ","wartość dokładna", "błąd" );
fprintf("%12s|%20.10f|%20.10f|%5.2e\n","p4(x,y)=y^4",s4,I4,I4-s4);



