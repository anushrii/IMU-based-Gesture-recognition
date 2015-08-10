function [alpha, beta, alpha_norm ,loglikelyhood ] = HMM_forwatdBackward(A, B , Pi, O)
% N - no. of states
% M - no. of observations
%%% A is the transition matrix of size NxN
%%% B is the emission matrix of size MxN
%%% O is the observations of size Mx1
%%% Pi is the initial probabilities of states of size Nx1
M = size(B,1);
N = size(A,1);
T = size(O,1);


%%% forward procedure
alpha = zeros(N,T);
alpha_norm = zeros(1,T);
%initialization
alpha(:,1) =  (Pi.*B(O(1),:)');
alpha_norm(1) =  sum(alpha(:,1));
alpha(:,1) = alpha(:,1)/alpha_norm(1);

%induction

for t= 2:T
    for j = 1:N
        %%check for the dimension multiplication of a and alpha
        alpha(j,t) = B(O(t),j)*sum(alpha(:,t-1).*A(:,j));
    end
        alpha_norm(t) = sum(alpha(:,t));
       %%%%%%%%%%%%%%%%
        if (alpha_norm(t)~=0)
            alpha(:,t)=alpha(:,t)/alpha_norm(t);
        end
end
  %%%% termination step, also needed to calculate the maximum likelyhood of 
  %%an observation given a  model. P(O|lambda).   
    if (any(alpha_norm==0))
        loglikelyhood=-inf;
    else
        loglikelyhood= sum(log(alpha_norm));  %%%%%%%%%%%%%%checkkkkk
    end
    %%%%%%%%%%%%%%%%%%%%%


%%% Backward algorithm
beta = zeros(N,T);

%initialization

beta(:,T) = 1/alpha_norm(1);
beta(:,T) = 1;
for t=T-1:-1:1
    for i=1:N
        beta(i,t) =  sum(B(O(t+1),:)'.*beta(:,t+1).*A(:,i))/alpha_norm(t+1);
    end 
end










        


