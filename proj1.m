f = @(x) 1/((x^2 + 1)*(x^2 + 4));
r = @(x) -sqrt(2*pi)*(exp(2*x) - 2*exp(x))/12;
xf = -10:0.1:10;
xr = -5:0.1:5;

img_f = [];
img_r = [];
siz1 = length(xf);
siz2 = length(xr);
for i = 1:siz1
  img_f = [img_f f(xf(i))];
endfor
for i = 1:siz2
  img_r = [img_r r(xr(i))];
endfor

close all
set(gca, "linewidth", 6, "FontSize", 12)

plot(xf, img_f, 'b', 'Linewidth', 3);
title('Gráfico da funcao racional r(x)')
xlabel('x')
ylabel('R(x)')
grid on; pause;

plot(xr, img_r, 'r', 'Linewidth', 3);
title('Gráfico da Transformada de Fourier R(\xi)');
xlabel('\xi'); ylabel('R(\xi)');
grid on; pause;

plot(xf, img_f, '--', 'Linewidth', 3, xr, img_r, '-.', 'Linewidth', 2)

legend('Funçao racional r(x)','Transformada de Fourier R(\xi)', 'location','west')
title('Gráfico da funcao racional e Transformada de Fourier')
xlabel('\xi, x'); ylabel('R(\xi), r(x)')

grid on; pause;

hold on; scatter(0,r(0));
legend('Funçao racional','Transformada de Fourier','R(0)', 'location','north')
xlim([-0.0001 0.0001]);  ylim([0.2 0.3]);
title('{\it Zoom} no gráfico anterior')
