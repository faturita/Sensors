%%%%%%%%%%%%%%%%%%%%%%%%%%
% C?digo Matlab

% valores tabla 2
T2= 0.01*[67  15  50
24  6  10
91  18  66
61  9  32
98  31  80
78  7  53];

% Wilcoxon rank sum test
% para ver si las perf. de exp 1 son > que las del exp 2
[p,h,stats] = ranksum(T2(:,1),T2(:,2),'tail','right','method','exact')
% para ver si las perf. de exp 1 son > que las del exp 3
[p,h,stats] = ranksum(T2(:,1),T2(:,3),'tail','right','method','exact')

% 
% Resultados: (Wilcoxon rank sum test a 1 cola H0: = vs Ha: >) 
% 
% perf. de exp 1 son > que las del exp 2
% ---------------------------------------
% p =
%     0.0022
% h =
%   logical
%    1
% stats =
%   struct with fields:
%     ranksum: 56
% 
% => el resultado que devuelve de rechazo de H0 lo hace el matlab a nivel 0.05, pero el pvalues es chiquito
% => se rechaza H0 => lo que postul?s est? OK.
% 
% 
% perf. de exp 1 son > que las del exp 3
% ---------------------------------------
% >> [p,h,stats] = ranksum(T2(:,1),T2(:,3),'tail','right','method','exact')
% p =
%     0.0898
% h =
%   logical
%    0
% stats =
%   struct with fields:
%     ranksum: 48
% 
% El pvalue > 0.05 => no se rechazar?a H0 (ah?, ah?...) pero va acorde con lo que postul?s en el paper (que las performances no son mayores, ie, que son resistentes).
% 
% ***************************
% Para los datos del BCI, dejemos nom?s lo que postul?s en el paper sin ning?n test porque es un sujeto solito (n=1) :(