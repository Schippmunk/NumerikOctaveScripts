% Diese Funktion berechnet fuer beliebige Stuetzstellen die Integrationsgewichte zu einer
%   interpolatorischen Quadraturformel.
% Eingabe:    ti=[t1,...,tn] mit t1<...<tn sind die Stützstellen
% Ausgabe:    wi=[wi,...,wn] sind die Integrationsgewichte, sodass fuer jedes j
%                             wi(j) zu ti(j) gehört.
function wi = compute_weights (ti)
  n = length(ti);

  m = ones(n,1);
  for i = 1:n
    m(i) = (ti(n)^i-ti(1)^i)/i;
  endfor
  
  % m = 1/(1:n);

  x = ones(n,n);
  for i = 2:n
    x(i,:)=ti.^(i-1);
  endfor
  
  wi = x\m;
  
endfunction
