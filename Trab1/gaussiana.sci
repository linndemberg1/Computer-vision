//Definição da Função
function y = gaussiana(t, A, sigma)
    y = A * exp(-t.^2 / (2 * sigma^2));
endfunction

// Gerar as funções no domínio do tempo
t = linspace(-10, 10, 1000);
A = 1;
tau = 2;
T = 4;
sigma = 1;

x3 = gaussiana(t, A, sigma);

// Plot das funções no domínio do tempo
figure();
subplot(3, 2, 3);
plot(t, x3, 'g', 'LineWidth', 2);
title('Função Gaussiana');

// Transformada de Fourier
X3 = fft(x3);

// Frequências
freq = linspace(-%pi, %pi, length(t));

// Plot das transformadas de Fourier
figure();
subplot(3, 2, 3);
plot(freq, fftshift(abs(X3)), 'g', 'LineWidth', 2);
title('Transformada de Fourier - Gaussiana');
