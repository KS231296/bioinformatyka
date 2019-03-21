function [filtered] = FilterCorelationAB(corelated,sizer,error)
    [r,c] = size(corelated);                                              
    filtered = zeros(size(corelated));                                               
    for w = 1:r
       for k = 1:c                                                        
%VER IV
           if corelated(w,k) ==1                                                   
               foundZeros = 0;                                                  
               for i = 1:sizer-1                                                
                  if  ~(w+i < rows && k+i < columns && corelated(w+i,k+i) == 1)    
                      foundZeros = foundZeros+1;                                
                  end
               end
               if foundZeros <= error                                           
                   filtered(w,k) =1;                                            
                  for i = 1:sizer-1                                             
                     filtered(w+i,k+i) =1;                                   
                  end
               end
           end
       end     
    end
end 