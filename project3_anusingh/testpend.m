close all
%------------ for plotting the Quantized data over the actual data--------%
%------------------------------pend--------------------------------------%
K =5;

for i = 1:3
    
 j = findcentroid(Ggesture{K,i},vect_data);
P{1,i} = j;

end


figure,
%subplot(3,1,1)
plot(Ggesture{K,3})
hold on
plot(P{1,3},'m','LineWidth', 2)
title('gesture: Pend')

hold off

% subplot(3,1,2)
% plot(Ggesture{K,2})
% hold on
% plot(P{1,2},'m','LineWidth', 2)
% hold off
% 
% subplot(3,1,3)
% plot(Ggesture{K,1})
% hold on
% plot(P{1,1},'m','LineWidth', 2)
% hold off
