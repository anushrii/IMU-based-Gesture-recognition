close all
%------------ for plotting the Quantized data over the actual data--------%
%------------------------------hammer------------------------------------%
K = 4;
for i = 1:3
    
 j = findcentroid(Ggesture{K,i},vect_data);
Y{1,i} = j;

end


figure,plot(Ggesture{4,3})
hold on
plot(Y{1,3},'m','LineWidth', 2)
hold off

figure, plot(Ggesture{4,2})
hold on
plot(Y{1,2},'m','LineWidth', 2)
hold off

figure, plot(Ggesture{4,1})
hold on
plot(Y{1,1},'m','LineWidth', 2)
hold off
