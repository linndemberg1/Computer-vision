// Definição das funções
function y = retangular(t, A, tau)
    y = A * (t > -0.5 & t < tau);
endfunction

function y = triangular(t, A, T)
    y = A * (1 - abs(t/T)) .* (abs(t) <= T/2);
endfunction

function y = gaussiana(t, A, sigma)
    y = A * exp(-t.^2 / (2 * sigma^2));
endfunction

function y = impulso(t, A)
    y = A * (t == 0);
endfunction

function y = pente(t, A, T)
    y = A * (pmodulo(t, T) == 0) .* (t >= 0);
endfunction

function y = diferenciacao(t, A)
    y = A * t;
endfunction

function y = combinacao_linear(t, A1, A2, A3)
    y = A1 * sin(2 * %pi * t) + A2 * cos(4 * %pi * t) + A3 * cos(6 * %pi * t);
endfunction

function y = escala(t, A)
    y = A * sinc(t);
endfunction

// Gerar os dados
t = linspace(-10, 10, 1000);
A = 1;
tau = 0.5;
T = 4;
sigma = 1;
A1 = 1;
A2 = 0.5;
A3 = 0.2;

x1 = retangular(t, A, tau);
x2 = triangular(t, A, T);
x3 = gaussiana(t, A, sigma);
x4 = impulso(t, A);
x5 = pente(t, A, T);
x6 = diferenciacao(t, A);
x7 = combinacao_linear(t, A1, A2, A3);
x8 = escala(t, A);

// Calcular as transformadas de Fourier
X1 = fft(x1);
X2 = fft(x2);
X3 = fft(x3);
X4 = fft(x4);
X5 = fft(x5);
X6 = fft(x6);
X7 = fft(x7);
X8 = fft(x8);

// Frequências
freq = linspace(-%pi, %pi, length(t));

// Plot
figure();

// Plot das funções no e das transformadas de Fourier no domínio do tempo
//RETANGULAR
subplot(4, 2, 1);
plot(t, x1, 'b', 'LineWidth', 2);
title('Função Retangular');
subplot(4, 2, 2);
plot(freq, fftshift(abs(X1)), 'b', 'LineWidth', 2);
title('Transformada de Fourier - Retangular');

//TRIANGULAR
subplot(4, 2, 3);
plot(t, x2, 'r', 'LineWidth', 2);
title('Função Triangular');
subplot(4, 2, 4);
plot(freq, fftshift(abs(X2)), 'r', 'LineWidth', 2);
title('Transformada de Fourier - Triangular');

//GAUSSIANA
subplot(4, 2, 5);
plot(t, x3, 'g', 'LineWidth', 2);
title('Função Gaussiana');
subplot(4, 2, 6);
plot(freq, fftshift(abs(X3)), 'g', 'LineWidth', 2);
title('Transformada de Fourier - Gaussiana');

//IMPULSO
subplot(4, 2, 7);
plot(t, x4, 'k', 'LineWidth', 2);
title('Função Impulso');
subplot(4, 2, 8);
plot(freq, fftshift(abs(X4)), 'k', 'LineWidth', 2);
title('Transformada de Fourier - Impulso');

figure();

//PENTE
subplot(4, 2, 1);
plot(t, x5, 'm', 'LineWidth', 2);
title('Função Pente');
subplot(4, 2, 2);
plot(freq, fftshift(abs(X5)), 'm', 'LineWidth', 2);
title('Transformada de Fourier - Pente');

//DIFERENCIAÇÃO
subplot(4, 2, 3);
plot(t, x6, 'c', 'LineWidth', 2);
title('Função Diferenciação');
subplot(4, 2, 4);
plot(freq, fftshift(abs(X6)), 'c', 'LineWidth', 2);
title('Transformada de Fourier - Diferenciação');

//COMBINAÇÃO_LINEAR
subplot(4, 2, 5);
plot(t, x7, 'y', 'LineWidth', 2);
title('Função Combinação Linear');
subplot(4, 2, 6);
plot(freq, fftshift(abs(X7)), 'y', 'LineWidth', 2);
title('Transformada de Fourier - Combinação Linear');

//ESCALA
subplot(4, 2, 7);
plot(t, x8, 'm', 'LineWidth', 2);
title('Função Escala');
subplot(4, 2, 8);
plot(freq, fftshift(abs(X8)), 'm', 'LineWidth', 2);
title('Transformada de Fourier - Escala');
