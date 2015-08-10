%%%% 
load('Ggestures.mat')
ALL = reshape(Ggesture , [] , 1);
ALL = cell2mat(ALL);


%%%% kmeans
[ centroids,vect_data ] = kmeans(ALL,15);

save('Centroids_vec','vect_data')