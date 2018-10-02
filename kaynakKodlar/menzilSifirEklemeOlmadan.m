clear all
close all

c = .3; % ???k h?z?
fc = 4; % merkez frekans
phic = 0*pi/180; % �apraz menzil merkezi
thc = 80*pi/180; % orta a�?

%________________�n ??leme________________
BWx = 80; % band geni?li?i
M = 32;  % menzil �rnekleri
dx = BWx/M; % menzil ��z�n�rl�?�
X = -dx*M/2:dx:dx*(M/2-1); % menzil vekt�r�
XX = -dx*M/2:dx:-dx*M/2+dx/4*(4*M-1); % x �rneklemeli 

%Frekans vekt�r�
df = c/2/BWx; % frekans ��z�n�rl�?�
F = fc+[-df*M/2:df:df*(M/2-1)]; % frekans vekt�r�
k = 2*pi*F/c; % dalga say?s? vekt�r�

% veriyi y�kleme
load Es_range


Enew=E;

% menzil profili yaratmak
figure;
RP = M*fftshift(ifft(Enew));
h = plot(XX,abs(RP),'k','LineWidth',2);
set(gca,'FontName', 'Arial', 'FontSize',14,'FontWeight','Bold');
ylabel('menzil profil yogunlugu'); xlabel('menzil [m]');
title('32 ornekli veri')
axis tight


 
