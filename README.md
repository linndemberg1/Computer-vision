Trabalhos de Visão Computacional:

1) Gerar o gráfico das principais funções vistas e suas transformadas de Fourier (em PDF)

2) Verificar o erro das câmeras de voces:
a) Calcular a média, o desvio padrão e a variância, para 20 amostragens (3 bandas e média das 3);
b) Escolher uma determinada linha da imagem e plotar um gráfico mostrando, para cada pixel, duas curvas: média mais desvio padrão; média menos desvio padrão (3 bandas e média das 3).
c) Indique outros dados da imagem (nível de cinza mínimopara cada cor, nível máximo para cada cor, mostre 5 imagens das 20 adquiridas, taxa de amostragem máxima, etc).

3) Auto-covariância:
a) Calcular a covariância para 25 imagens amostradas pelas câmeras, numa área de 32x32 pixels, posicionada no centro das imagens;
b) Plotar o gráfico da média da covariância (bidimensional)

4) Implementar um algoritmo para retirada da distorção radiométrica.

5) Determinar os parâmetros intrínsecos e extrínsecos das câmeras (calibração). Para os parâmetros extrínsecos, considere um padrão colocado a uma distância fixa da câmera, cuja posição e orientação em relação à câmera deverá ser mantida em todo o experimento. Para isso, pontos fácil de localizar na imagem devem ter suas coordenadas determinadas tanto no frame de mundo quanto no de imagem. Arbitre a origem do frame de imagem e de mundo. Cada grupo, implementar Tsai e dois outros métodos diferentes. Incluir implementação de um algoritmo para retirada da distorção geométrica (radial).

6) Implementar os algoritmos de Shape from X = shading (sombreamento) e X = motion (movimento). No relatório, indique o formalismo do modelo implementado, bem como os resultados da implementação (mapa de agulhas ou de normais, ou triangulação ou outra forma de representação da superfície resultante).

7) Implementar 2 metodos de Reconstrucao Estereo, passos a seguir:
a) Determinar o estado da arte em metodos baseados em area
b) Determinar o estado da arte em metodos baseados em features (elementos)
d) Escolher 2 metodos diferentes e implementa-los (usando imagens providas pelas cameras da Zed).
e) Entregar um relatorio com o estado da arte e resultados (visuais) dos métodos implementados, se possível comparando os resultados com os da SDK da Zed.

8) Projeto Final de Visão Computacional
Tentar juntar os métodos desenvolvidos para criar um sistema de Visão Estéreo, pesquisando na literatura sistemas similares e especificar formalmente o problema, resultando num projeto com objetivos e metas, metodologias, atividades, diagramas em alto nível (UML), justificativas, etc (juntar tudo num relatório).
a) Projetar o sistema, detalhando cada módulo (fazer UML detalhando os subsistemas)
b) Implementar cada módulo do Sistema de Visão
c) Realizar experimentos (tarefas como atenção visual e reconhecimento e manipulação de objetos, poderão ser realizadas pelo sistema)
Obs: Outras sugestões de trabalhos finais são bem vindas. Entre em contato comigo caso tenham alguma proposta, na mesma linha acima, usando os conhecimentos teóricos adquiridos na disciplina.
