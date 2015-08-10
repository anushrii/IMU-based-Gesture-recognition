%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------test script-----------------------------------%
load('E:\aaaa\project3_anusingh\test\trim01')
load('E:\aaaa\project3_anusingh\test\trim02')
load('E:\aaaa\project3_anusingh\test\trim03')
load('E:\aaaa\project3_anusingh\test\trim04')
load('E:\aaaa\project3_anusingh\test\trim05')
load('E:\aaaa\project3_anusingh\test\trim06')
clear imu
imu ={};
imu{1} = trim01(:,2:7);
imu{2} = trim02(:,2:7);
imu{3} = trim03(:,2:7);
imu{4} = trim04(:,2:7);
imu{5} = trim05(:,2:7);
imu{6} = trim06(:,2:7);


%P(O|lamda)
load('models1.mat','A_','B_','Pi_')
load('Centroids_vec','vect_data')

  for k = 1:6
   for i = 1:6
  j = findcentroid(imu{k},vect_data);
[~,~,~,loglikelyhood(i) ] = HMM_forwatdBackward(A_{1,i}+0.0001, B_{1,i}+0.0001 , Pi_{1,i}+0.0001, j);
display(loglikelyhood(i))
   end

nameGesture={'circle','figure8','fish','hammer','pend','wave'};
[val,idx]=sort(loglikelyhood,'descend');
 fprintf ('\nGesture no. %d\n',k);
 fprintf ('No.1  %s  with log-likelihood = %f\n',nameGesture{idx(1)},loglikelyhood(idx(1)));
 fprintf ('No.2  %s  with log-likelihood = %f\n',nameGesture{idx(2)},loglikelyhood(idx(2)));
 fprintf ('No.3  %s  with log-likelihood = %f\n',nameGesture{idx(3)},loglikelyhood(idx(3)));
  end