clear all
close all

c = .3; % ???k h?z?
fc = 4; % merkez frekans
phic = 0*pi/180; 
thc = 80*pi/180; 

%________________�n ??lem________________
BWy = 66; % �apraz menzil band geni?li?i
N = 64;  % �apraz menzil �rnek say?s?
dy = BWy/N;
Y = -dy*N/2:dy:dy*(N/2-1)
YY = -dy*N/2:dy:-dy*N/2+dy/4*(4*N-1); 


kc = 2*pi*fc/c; % merkez wavenumber 
dphi = pi/(kc*BWy); 
PHI=phic+[-dphi*N/2:dphi:dphi*(N/2-1)];

% �apraz menzil verisi
load Es_xrange

%s?f?r ekleme
Enew = E.*hamming(64)';


% �apraz menzil profilinin �?kar?lmas?
XRP = N*fftshift(ifft(Enew));
h = plot(YY,abs(XRP),'k','LineWidth',2);
set(gca,'FontName', 'Arial', 'FontSize',14,'FontWeight','Bold');
ylabel('capraz-menzil profil yogunlugu'); xlabel('capraz menzil [m]');
title('Hamming penceresi ile')
axis tight


