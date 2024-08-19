// Função da função pente
function y = pente(t, A, T)
    y = A * (pmodulo(t, T) == 0) .* (t >= 0);
endfunction

// Gerar os dados para a função pente
t = linspace(-10, 10, 1000);
A = 1;
T = 4;
x5 = pente(t, A, T);

// Plot da função pente
figure();
plot(t, x5, 'm', 'LineWidth', 2);
title('Pente');
xlabel('Tempo');
ylabel('Amplitude');

// Calcular a transformada de Fourier da função pente
X5 = fft(x5);
freq = linspace(-%pi, %pi, length(t));

// Plot da transformada de Fourier da função pente
figure();
plot(freq, fftshift(abs(X5)), 'm', 'LineWidth', 2);
title('Transformada de Fourier - Pente');
xlabel('Frequência');
ylabel('Magnitude');
