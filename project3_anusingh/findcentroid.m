function centroid = findcentroid(value,cent)
[c,r] = size(cent);
C = reshape(cent',[1 r c]);
dist = (bsxfun(@minus,value,C)).^2;
dist = squeeze(sqrt(sum(dist,2)));
[val, ind] = sort(dist,2);
centroid = ind(:,1);

