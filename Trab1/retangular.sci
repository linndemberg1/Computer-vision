//Definição da Função
function y = retangular(t, A, tau)
    y = A * (t >= 0 & t <= tau);
endfunction

// Gerar as funções no domínio do tempo
t = linspace(-10, 10, 1000);
A = 1;
tau = 2;
T = 4;
sigma = 1;

x1 = retangular(t, A, tau);

// Plot das funções no domínio do tempo
figure();
subplot(3, 2, 1);
plot(t, x1, 'b', 'LineWidth', 2);
title('Função Retangular');

// Transformada de Fourier
X1 = fft(x1);

// Frequências
freq = linspace(-%pi, %pi, length(t));

// Plot das transformadas de Fourier
figure();
subplot(3, 2, 1);
plot(freq, fftshift(abs(X1)), 'b', 'LineWidth', 2);
title('Transformada de Fourier - Retangular');

