clear all
close all

c = .3; % ???k h?z?
fc = 4; % merkez frekans
phic = 0*pi/180; % çapraz menzil merkezi
thc = 80*pi/180; % orta aç?

%________________Ön ??leme________________
BWx = 80; % band geni?li?i
M = 32;  % menzil örnekleri
dx = BWx/M; % menzil çözünürlü?ü
X = -dx*M/2:dx:dx*(M/2-1); % menzil vektörü
XX = -dx*M/2:dx:-dx*M/2+dx/4*(4*M-1); % x örneklemeli 

%Frekans vektörü
df = c/2/BWx; % frekans çözünürlü?ü
F = fc+[-df*M/2:df:df*(M/2-1)]; % frekans vektörü
k = 2*pi*F/c; % dalga say?s? vektörü

% veriyi yükleme
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


 
