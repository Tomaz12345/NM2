function Bf = bernpoly(f,n,x)
% Funkcija bernpoly vrne vrednosti Bernsteinovega polinoma stopnje n za funkcijo f v
% tockah x.
%
% Bf = bernpoly(f,n,x)
%
% Vhod:
%  f    funkcija: @(x) f(x),
%  n    stopnja Bernsteinovega polinoma,
%  x    seznam abscis.
%
% Izhod:
%  Bf   seznam vrednosti Bernsteinovega polinoma stopnje n za funkcijo f v
%       tockah iz seznama x.
    bern_bazni = [];
    for i = 0:n
        bern_bazni = [bern_bazni, nchoosek(n, i) * (x^i) * (1-x)^(n-i)];
    end

    Bf = 0;
    for i = 0:n
        Bf = Bf + f(i/n) * bern_bazni(i+1);
    end

end