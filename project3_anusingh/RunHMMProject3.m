%%%project 3


% Gesture recognition using hidden markov models

%circle, figure 8, fish , hammer, pend, wave
% addpath('C:\Users\sabhajit singh\Desktop\learning in robotics\project 3\train\train\fish')

%Ggesture = loadAll();
Ggesture = LOAD_ALL();
load('Centroids_vec','vect_data')
%-------------------------------------------------------------------------
% HMM model for the gestures
%-------------------------------------------------------------------------
%vectorize the data
%k = 20; 
num_states = 15;
Obs_states =15;
A_ = cell(1,6);
B_ = cell(1,6);
Pi_ = cell(1,6);


for K = 1:6
    for i = 1:5
        j = findcentroid(Ggesture{K,i},vect_data);
        J{1,i} = j;

    end
[A,B,Pi]=initializeLambda(Obs_states, num_states);
%%EM
[A_{1,K},B_{1,K},Pi_{1,K}] =  EM(A,B,Pi,J);

end


% %-----------------------------------------------------------------------------------
save('models1.mat','A_','B_','Pi_')
