%funcao racional, TF e intervalos das funções
r = @(x) 1/((x^2 + 1)*(x^2 + 4));
R = @(x) -sqrt(2*pi)*(exp(2*x) - 2*exp(x))/12;
xr = -10:0.1:10;
xR = -5:0.1:5;

%cria vetores vazios e armazena
%as imagens das funções r e R neles
img_r = [];
img_R = [];
siz1 = length(xr);
siz2 = length(xR);
for i = 1:siz1
  img_r = [img_r r(xr(i))];
endfor
for i = 1:siz2
  img_R = [img_R R(xR(i))];
endfor

close all

%img1
plot(xr, img_r, 'b', 'Linewidth', 3);
title('Gráfico da funcao racional r(x)')
xlabel('x')
ylabel('r(x)')
grid on; pause;

%img2
plot(xR, img_R, 'r', 'Linewidth', 3);
title('Gráfico da Transformada de Fourier R(\xi)');
xlabel('\xi'); ylabel('R(\xi)');
grid on; pause;

%img3
plot(xr, img_r, '--', 'Linewidth', 3, xR, img_R, '-.', 'Linewidth', 2)
legend('Funçao racional r(x)','Transformada de Fourier R(\xi)', 'location','west')
title('Gráfico da funcao racional e Transformada de Fourier')
xlabel('\xi, x'); ylabel('R(\xi), r(x)')
grid on; pause;

%img4
hold on; scatter(0,R(0));
legend('Funçao racional','Transformada de Fourier','R(0)', 'location','north')
xlim([-0.0001 0.0001]);  ylim([0.2 0.3]);
title('{\it Zoom} no gráfico anterior')
