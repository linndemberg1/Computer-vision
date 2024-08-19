//Definição da Função
function y = triangular(t, A, T)
    y = A * (1 - abs(t/T)) .* (abs(t) <= T/2);
endfunction

// Gerar as funções no domínio do tempo
t = linspace(-10, 10, 1000);
A = 1;
tau = 2;
T = 4;
sigma = 1;

x2 = triangular(t, A, T);

// Plot das funções no domínio do tempo
figure();
subplot(3, 2, 2);
plot(t, x2, 'r', 'LineWidth', 2);
title('Função Triangular');

// Transformada de Fourier
X2 = fft(x2);

// Frequências
freq = linspace(-%pi, %pi, length(t));

// Plot das transformadas de Fourier
figure();
subplot(3, 2, 2);
plot(freq, fftshift(abs(X2)), 'r', 'LineWidth', 2);
title('Transformada de Fourier - Triangular');
