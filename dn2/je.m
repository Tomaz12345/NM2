function y = je(x, f, y0)
% Opis:
%  Funkcija rk4 vrne numericno resitev sistema navadnih diferencialnih enacb
%  y' = f(x, y) pri pogoju y(x(1)) = y0, ki je izracunana z Runge-Kutta metodo stopnje 4.
%
% Definicija:
%  y = rk4(x, f, y0)
%
% Vhodni podatki:
%  x    vrstica delilnih tock,
%  f    funkcija f v obliki @(x, y) f(x, y),
%  y0   zacetna vrednost resitve, stolpec dimenzije (n x 1), kjer je n stevilo enacb sistema.

    h = x(2)-x(1);
    alphas = [0, 0.5, 0.5, 1];
    gammas = [1/6, 2/6, 2/6, 1/6];
    betas = [0, 0, 0, 0; 
            1/2, 0, 0, 0; 
            0, 1/2, 0, 0;
            0, 0, 1, 0];
    n = length(x);
    m = length(y0);
    y = zeros(n,m);
    y(1,:) = y0;
    for i = 2:n
        k = zeros(4,m);
        k(1,:) = h * f(x(i-1)+alphas(1)*h, y(i-1,:));
        k(2,:) = h * f(x(i-1)+alphas(2)*h, y(i-1,:) + betas(2,1)*k(1));
        k(3,:) = h * f(x(i-1)+alphas(3)*h, y(i-1,:) + betas(3,2)*k(2));
        k(4,:) = h * f(x(i-1)+alphas(4)*h, y(i-1,:) + betas(4,3)*k(3));
        y(i,:) = y(i-1,:) + gammas*k;
    end
end

