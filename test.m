clear;
clc;

A = getFasta(2);
B = getFasta(2);
m = corelationAB(A(1).sequence, B(1).sequence);
figure(1)
spy(m);
title('Raw Dotplot from given data');
ylabel('A');
xlabel('B');

sizer = input('Choose the size of a window: ');
error = input('Choose the size of a treshold: ');
[window] = FilterCorelationAB(m,sizer,error);
 
figure(2)
spy(window)
title('Dotplot from given data');
ylabel('A');
xlabel('B');