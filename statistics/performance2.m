%%%%%%%%%%%%%%%%%%%%%%%%%%
% C?digo Matlab

% valores tabla 2
T2= 0.01*[67  15  50
24  6  10
91  18  66
61  9  32
98  31  80
78  7  53];

% compara si las performances de los m?todos son distintas para los 3
% experimentos
% tratamiento: m?todo - bloque: experimento
quadetest(T2')

%%%%%%%%%%%%%%%%%%%%%%%%%%

% QUADE TEST FOR IDENTICAL TREATMENT EFFECTS:
% TWO-WAY BALANCED, COMPLETE BLOCK DESIGNS
% --------------------------------------------------------------------------------
% Number of observation: 18
% Number of blocks: 3
% Number of treatments: 6
% --------------------------------------------------------------------------------
% F-statistic approximation
% Quade test statistic W: 8.8889
% F=W df-num=5 df-denom=10 - p-value (2 tailed): 0.0019
% --------------------------------------------------------------------------------
%  
% POST-HOC MULTIPLE COMPARISONS
% --------------------------------------------------------------------------------
% Critical value: 11.5777
% Absolute difference among mean ranks
%      0     0     0     0     0     0
%     13     0     0     0     0     0
%     11    24     0     0     0     0
%      6     7    17     0     0     0
%     17    30     6    23     0     0
%      3    16     8     9    14     0
% Absolute difference > Critical Value
%    0   0   0   0   0   0
%    1   0   0   0   0   0
%    0   1   0   0   0   0
%    0   0   1   0   0   0
%    1   1   0   1   0   0
%    0   1   0   0   1   0
% 
% Conclusiones:
% 
% pvalue: 0.0019 => (chiquito) => se rechaza H0 => hay diferencias entre las performances
% 
% ?Para cu?les?
% Mirando "Absolute difference among mean ranks", es una matriz triangular con la diagonal nula, por lo que deduzco que en la posici?n (i,j) (del tri?ng. inferior => i.e. i<j) hace la cuenta para comparar trat. i con j. No devuelve el p-value, pero mirando el c?digo, se ve que se hace el test a nivel 0.05
% 
% Hay 1's en las coord. (2,1), (3,2) (4,3) (5,1) (5,2) (5,4) (6,2) (6,5) y la tabla 2 era
% 
% MP 1 PO8 67% 15% 50%
% MP 2 PO7 24% 6% 10%
% SIFT PO8 91% 18% 66%
% PE Cz 61% 9% 32%
% SHCC P4 98% 31% 80%
% SVM PO8 78% 7% 53%
% 
% => los m?todos son Mp1:1, MP2: 2, SIFT:3, PE:4, SHCC:5, SVM:6, entonces a nivel 0.05 hay diferencias signficativas entre: MP1 y MP2 (2,1) - MP2 y SIFT (3,2) - SIFT y PE (4,3) - MP1 y SHCC (5,1) - MP2 y SHCC (5,2) - PE y SHCC (5,4) - PE y SVM (6,2) - SHCC y SVM (6,5)
% 
% 
% Resumiendo (la idea para escribir en el paper, vos despu?s lo escrib?s in English "bien"): usando el test de Quade se obtuvo que hay diferencias significativas (pvalue=0.0019) al comparar las performances de los distintos m?todos para las se?ales de los 3 experimentos.
% A un nivel de significaci?n de 0.05 se obtienen diferencias significativas entre las performances de SIFT con MP2 y PE; entre MP1 y MP2; entre SHCC con MP1, MP2, PE y SMV; entre MP2 y SVM
% (fijate que no haya hecho l?o con las coordenadas de los 1's, los nros de los trat. y los nombres, y ordenalos c?mo creas conveniente).
