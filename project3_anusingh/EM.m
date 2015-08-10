function [A,B,Pi] =  EM(A,B,Pi,J)
N = size(A,1);
M = size(B,1);

%data is in J, cells of trials , 
% no.of trails  = size(J,2)

n_trails = size(J,2);
%%calculating Epsilon :E
E =zeros (size(N,N)); %expected no. of transitions from Si to Sj
G =zeros (size(M,N)); %expected no. of times in state Sj and observing Vk
G_den = zeros(size(N,1)); %expected no. of times in state Sj
for k = 1:50
   
    for trial =1:n_trails 
        O = J{1,trial};
        tau = length(O);
        [ alpha, beta, alpha_norm, ~] = HMM_forwatdBackward(A,B,Pi,O);
%         if k == 20
%         plot(1./alpha_norm)
%         pause
%         end
        epsilon = zeros(N,N,tau);
        Gg = zeros(M,N);
        
        for t = 1:tau-1
             for i=1:N        
             epsilon (i,:,t) = alpha(i,t)*A(i,:).*B(O(t+1),:).*beta(:,t+1)'/alpha_norm(t+1);
             end
        epsilon(:,:,t)=epsilon(:,:,t)/sum(sum(epsilon(:,:,t)));  
        end

        E = E + sum(epsilon,3);
        gamma = [];
        gamma(:,:) = sum(epsilon,2);
         for j = 1:M
                Ind= (O ==j);
                Ind = Ind(1:end-1);         
                Gg(j,:) = sum(gamma(:,Ind),2)';
         end
    
       G = G + Gg; %% expected number of times in state Sj and observing vk
       G_den = G_den + sum(gamma,2);
    end

A = bsxfun(@rdivide,E,G_den);
B = bsxfun(@rdivide,G,G_den');
Pi = gamma(:,1);

end



