function [ p ] = matplot2( X,Y,A,r)
%UNTÝTLED2 Summary of this function goes here
%   Detailed explanation goes here
b = max(max(abs(A)));
ra = b/(10^(r/20));
p = A.*(abs(A>=ra)+ra*ones(size(A)).*(abs(A)<ra));
pp = 20*log10(abs(p)/b);
colormap(jet(256));
imagesc(X,Y,pp);
end

