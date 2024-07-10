clc
clear all

% Geometrical paramters
L=100; %Length of the fin
N=100; %No of nodes
dx=L/(N-1);

T=zeros(N,1);
Tb=100; %Base temperature
k=100; % No of iterations

for j=1:1:k
    T(1,1)=Tb;
    for i=2:1:N-1
        T(i,1)=(T(i+1,1)+T((i-1),1))/2;
    end
    T(N,1)=T(N-1,1);
    plot(T);
    hold on
end

hold off
disp(T)
