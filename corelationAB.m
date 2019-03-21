function [corelated] = corelationAB( ch1,ch2 )
  ch1 = char(ch1);                
  ch2 = char(ch2);                
  m = length(ch1);                
  n = length(ch2);                

  corelated = zeros(m,n);            

  for i = 1:m                     
    
    for j = 1:n                 
        if ch1(i) == ch2(j)     
            corelated(i,j) = 1;    
        end
    end
  end
end