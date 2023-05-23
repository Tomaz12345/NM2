function y = navadnaIteracija(xn, xn1, yn, f, tol)
% Opis:
%  Funkcija navadnaIteracija vrne numericno resitev enacbe
%  y_{n+1}=g(x_n,x_{n+1},y_n,y_{n+1}).
%
% Definicija:
% y = navadnaIteracija(xn, xn1, yn, f, tol)
%
% Vhodni podatki:
%  xn, xn1  zaporedni delilni tocki x_n in x_{n+1},
%  yn       ze izracunani numericni priblizek za y(xn),
%  f        funkcija f v obliki @(x,y) f(x,y),
%  tol      toleranca za zaustavitevni pogoj.
%
% Izhodni podatek:
%  y        numericni priblizek izracunan z navadno iteracijo.
    k = 0;
    nap = 1;

    while nap > tol*norm(yn) && k < 100
        ynk = y(:,i-1) + h * f(x(i), yn);
        nap = norm(ynk - yn);
        yn = ynk;
        k = k + 1;
    end

    y = ynk;
end
