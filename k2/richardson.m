function [prb, nap, eks_prb] = richardson(f,a,b,m)
% Opis:
%  Funkcija richardson izracuna priblizek S_{h/2} za intergral funkcije f po
%  sestavljenem Simpsonovem pravilu pri razmiku h/2=1/2*(b-a)/(2m), oceno
%  za napako tega priblizka ter ekstrapoliran priblizek, dobljen iz S_{h/2}
%  in S_h.
%
% Definicija:
% [prb, nap, eks_prb] = richardson(f,a,b,m)
%
% Vhodni podatki:
%  f        funkcija f v obliki @(x,y) f(x,y),
%  a,b      krajisci intervala,
%  m        stevilo osnovnih pravil.
%
% Izhodni podatki:
%  prb      priblizek S_{h/2},
%  nap      ocena za napako priblizka S_{h/2},
%  eks_prb  ekstrapoliran priblizek za integral funkcije f.
    p = 4;

    prb = simpson(f, a, b, m*2);
    nap = (prb - simpson(f, a, b, m))/((2^p)-1);
    eks_prb = ((2^p)*prb - simpson(f, a, b, m))/((2^p)-1);




end