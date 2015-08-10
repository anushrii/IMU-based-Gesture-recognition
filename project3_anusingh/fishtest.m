close all

K =3;
%k = 7;
for i = 1:3
    
 j = findcentroid(Ggesture{K,i},vect_data);
W{1,i} = j;

end
% figure,plot(Ggesture{K,5})
% hold on
% plot(W{1,3},'m','LineWidth', 2)
% hold off
% title('fish,5')
% 
% figure,plot(Ggesture{K,4})
% hold on
% plot(W{1,3},'m','LineWidth', 2)
% hold off
% title('fish,4')


figure,plot(Ggesture{K,3})
hold on
plot(W{1,3},'m','LineWidth', 2)
hold off
title('Gesture: fish')

figure, plot(Ggesture{K,2})
hold on
plot(W{1,2},'m','LineWidth', 2)
hold off
title('fish,2')

figure, plot(Ggesture{K,1})
hold on
plot(W{1,1},'m','LineWidth', 2)
hold off
title('fish,1')
