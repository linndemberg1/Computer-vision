// Função de escala
function y = escala(t, A)
    y = A * sinc(t);
endfunction

// Gerar os dados para a função de escala
t = linspace(-10, 10, 1000);
A = 1;
x8 = escala(t, A);

// Plot da função de escala
figure();
plot(t, x8, 'r', 'LineWidth', 2);
title('Função de Escala');
xlabel('Tempo');
ylabel('Amplitude');

// Calcular a transformada de Fourier da função de escala
X8 = fft(x8);
freq = linspace(-%pi, %pi, length(t));

// Plot da transformada de Fourier da função de escala
figure();
plot(freq, fftshift(abs(X8)), 'r', 'LineWidth', 2);
title('Transformada de Fourier - Função de Escala');
xlabel('Frequência');
ylabel('Magnitude');
