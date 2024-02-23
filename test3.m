function [] = test3()
% Projekt 1, Zadanie 35
% Piotr Rowicki, 320730
% test metody 3

% Definicja funckji i przybliżenie na 1,2 15 i 30 podprzedziałach
f = @(x,y) x .^ 2;
s1 = P1Z35_PRO_DIntTrapSimp(f,0,3,0,1,1,1);
s2 = P1Z35_PRO_DIntTrapSimp(f,0,3,0,1,2,1);
s3 = P1Z35_PRO_DIntTrapSimp(f,0,3,0,1,15,1);
s4 = P1Z35_PRO_DIntTrapSimp(f,0,3,0,1,30,1);

% dokładna wartość całki
I=9;
% Błędy wyliczone ze wzoru. Błąd e1 odpowiada przybliżeniu s1 itd
e1 = - 1 / 12 * 2 * 3 * 3 ^ 2;
e2 = - 1 / 12 * 2 * 3 * (3 / 2) ^ 2;
e3 = - 1 / 12 * 2 * 3 * (3 / 15) ^ 2;
e4 = - 1 / 12 * 2 * 3 * (3 / 30) ^ 2;

   
fprintf("Celem testu jest sprawdzenie, czy błąd złorzonej kwadratury\nzmiennej x, równa się " + ...
    "błędowi złorzonej kwadratury Trapezów\n");
fprintf("\nzałóżmy że rozważane funkcje nie będą zależne od zmiennej y, \na przedział całkowania po niej wynosić będzie [0,1].\n" + ...
    "Przy takich założeniach wynik będzie zależał wyłącznie \nod kwadratury zmiennej x\n\n")
fprintf("Rozważmy całkę z funckji f(x,y)=x^2 na obszarze [0,3]x[0,1]\n" + ...
    "wyznaczmy przybliżenie tej całki naszą metodą przy podziale [0,3]\n" + ...
    "na 1, 2, 15 i 30 podprzedziałów, i porównajmy błędy, z tymi" + ...
    "\nwyliczonymi ze wzoru. Wartości powinny być sobie równe, albo bardzo bliskie\n")
fprintf("\n%20s|%17s|%15s|%9s \n","ilość podprzedziałów","błąd wyznaczony ","błąd ze wzoru", "różnica" );
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",1,I-s1,e1,I-s1-e1);
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",2,I-s2,e2,I-s2-e2);
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",15,I-s3,e3,I-s3-e3);
fprintf("%20i|%17.7e|%15.7e|%9.2e\n",30,I-s4,e4,I-s4-e4);


end



