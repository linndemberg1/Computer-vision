//Definição da Função
function y = impulso(t, A)
    y = A * (t == 0);
endfunction

// Gerar as funções no domínio do tempo
t = linspace(-10, 10, 1000);
A = 1;
tau = 2;
T = 4;
sigma = 1;

x4 = impulso(t, A);

// Plot das funções no domínio do tempo
figure();
subplot(3, 2, 4);
plot(t, x4, 'k', 'LineWidth', 2); 
title('Função Impulso');

// Transformada de Fourier
X4 = fft(x4);

// Frequências
freq = linspace(-%pi, %pi, length(t));

// Plot das transformadas de Fourier
figure();
subplot(3, 2, 4);
plot(freq, fftshift(abs(X4)), 'k', 'LineWidth', 2);
title('Transformada de Fourier - Impulso');
