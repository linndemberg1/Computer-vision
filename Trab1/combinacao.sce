// Função da combinação linear
function y = combinacao_linear(t, A1, A2, A3)
    y = A1 * sin(2 * %pi * t) + A2 * cos(4 * %pi * t) + A3 * cos(6 * %pi * t);
endfunction

// Gerar os dados para a combinação linear
t = linspace(-10, 10, 1000);
A1 = 1;
A2 = 0.5;
A3 = 0.2;
x7 = combinacao_linear(t, A1, A2, A3);

// Plot da combinação linear
figure();
plot(t, x7, 'b', 'LineWidth', 2);
title('Combinação Linear');
xlabel('Tempo');
ylabel('Amplitude');

// Calcular a transformada de Fourier da combinação linear
X7 = fft(x7);
freq = linspace(-%pi, %pi, length(t));

// Plot da transformada de Fourier da combinação linear
figure();
plot(freq, fftshift(abs(X7)), 'b', 'LineWidth', 2);
title('Transformada de Fourier - Combinação Linear');
xlabel('Frequência');
ylabel('Magnitude');
