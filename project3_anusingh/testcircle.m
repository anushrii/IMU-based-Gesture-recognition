
%------------ for plotting the Quantized data over the actual data--------%
%------------------------------circle-------------------------------------%
close all

K =1;
k = 12;
for i = 1:3
    
 j = findcentroid(Ggesture{K,i},vect_data);
J{1,i} = j;

end


figure,plot(Ggesture{1,3})
hold on
plot(J{1,3},'m','LineWidth', 2)
hold off

figure, plot(Ggesture{1,2})
hold on
plot(J{1,2},'m','LineWidth', 2)
hold off

figure, plot(Ggesture{1,1})
hold on
plot(J{1,1},'m','LineWidth', 2)
hold off
