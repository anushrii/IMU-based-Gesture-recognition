close all

%------------ for plotting the Quantized data over the actual data--------%
%------------------------------figure8------------------------------------%
K =2;
% k = 12;
for i = 1:3
     j = findcentroid(Ggesture{K,i},vect_data);
Q{1,i} = j;

end


figure,plot(Ggesture{K,3})
hold on
plot(Q{1,3},'m','LineWidth', 2)
hold off
title('figure8')


figure, plot(Ggesture{K,2})
hold on
plot(Q{1,2},'m','LineWidth', 2)
hold off
title('8')


figure, plot(Ggesture{K,1})
hold on
plot(Q{1,1},'m','LineWidth', 2)
hold off
title('8')



