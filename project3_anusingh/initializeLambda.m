function [A,B,Pi]=initializeLambda(Obs_timestates, num_states)
N = num_states;
M = Obs_timestates;
Pi = [1, 0.01*rand(1,N-1)]';
A = 0.01*rand(N);
A = bsxfun(@rdivide,A,sum(A,2));
B = 0.01*rand(M,N);
B = bsxfun(@rdivide,B,sum(B,1));
