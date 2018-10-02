clear all
close all

c = .3; 
fc = 10; 
phic = 180*pi/180; 

%________________ISAR Ön İşleme________________
BWx = 3; 
M = 16; 
BWy = 3; 
N = 32; 

dx = BWx/M; %  
dy = BWy/N; %  


X = -dx*M/2:dx:dx*(M/2-1);
Y = -dy*N/2:dy:dy*(N/2-1);


df = c/(2*BWx); 
dk = 2*pi*df/c; 
kc = 2*pi*fc/c;
dphi = pi/(kc*BWy);


F = fc+[-df*M/2:df:df*(M/2-1)]; 
PHI = phic+[-dphi*N/2:dphi:dphi*(N/2-1)];
K = 2*pi*F/c; 


load  Escorner



ISAR=fftshift(ifft2(Es)); 
h=figure;
matplot2(X,Y,abs(ISAR),20); 
colormap (1-gray);
colorbar
set(gca,'FontName', 'Arial', 'FontSize',12,'FontWeight', 'Bold');
xlabel('Menzil [m]'); ylabel('Capraz menzil [m]'); 
 
line([-0.7071 0], [-0.7071 0],'LineWidth',2,'Color','k');
line([-0.7071 0], [0.7071 0],'LineWidth',2,'Color','k');

