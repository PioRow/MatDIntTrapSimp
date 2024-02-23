function [] = test4()
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% test metody 4

% Definicja funkcji, wyliznaczenie przybliżenia, wartości dokładnej i 
% błędu  ze wzoru. Błąd e1 odpowiada przybliżeniu s1 itd
f = @(x,y) y .^ 4 + 0 .* x;
s1 = P1Z35_PRO_DIntTrapSimp(f,0,1,0,1,1,1);
s2 = P1Z35_PRO_DIntTrapSimp(f,0,1,0,1,1,2);
s3 = P1Z35_PRO_DIntTrapSimp(f,0,1,0,1,1,15);
s4 = P1Z35_PRO_DIntTrapSimp(f,0,1,0,1,1,30);
I = 1 / 5;
e1 = - 24 / 90 * (1 / 2) ^ 5;
e2 = - 24 / 90 * (1 / 2) ^ 4 * (1 / 2) ^ 5;
e3 = - 24 / 90 * (1 / 15) ^ 4 * (1 / 2) ^ 5;
e4 = - 24 / 90 * (1 / 30) ^ 4 * (1 / 2) ^ 5;

fprintf("Test sprawdza, czy błąd złorzonej kwadratury po zmiennej y, równa się\n" + ...
    "błędowi złorzonej kwadratury Simpsona \n\n")
fprintf("załóżmy że rozważane funkcje nie będą zależne od zmiennej x, \n a przedział całkowania po niej wynosić będzie [0,1].\n" + ...
    "Przy takich założeniach wynik będzie zależał wyłącznie \nod kwadratury zmiennej y\n\n")
fprintf("Rozważmy całkę z funckji f(x,y)=y^4 na obszarze [0,1]x[0,1]\n" + ...
    "wyznaczmy przybliżenie tej całki naszą metodą przy podziale przedziału\n zmiennej y" + ...
    " na 1, 2, 15 i 30 podprzedziałów, i porównajmy błędy, z tymi" + ...
    "\nwyliczonymi ze wzoru. Wartości powinny być sobie równe, albo bardzo bliskie\n");
fprintf("\n%20s|%17s|%15s|%9s \n","ilość podprzedziałów","błąd wyznaczony ","błąd ze wzoru", "różnica" );
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",1,I-s1,e1,I-s1-e1);
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",2,I-s2,e2,I-s2-e2);
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",15,I-s3,e3,I-s3-e3);
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",30,I-s4,e4,I-s4-e4);




end

