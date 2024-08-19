//Definição da Função
function y = diferenciacao(t, A)
    y = A * t;
endfunction

// Gerar as funções no domínio do tempo
t = linspace(-10, 10, 1000);
A = 1;
tau = 2;
T = 4;
sigma = 1;

x6 = diferenciacao(t, A);

// Plot das funções no domínio do tempo
figure();
subplot(3, 2, 6);
plot(t, x6, 'c', 'LineWidth', 2);
title('Função Diferenciação');

// Transformada de Fourier
X6 = fft(x6);

// Frequências
freq = linspace(-%pi, %pi, length(t));

// Plot das transformadas de Fourier
figure();
subplot(3, 2, 6);
plot(freq, fftshift(abs(X6)), 'c', 'LineWidth', 2);
title('Transformada de Fourier - Diferenciação');
