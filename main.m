clear all;
clc;
close all;
beta_static = 1000;
alpha1 = 0.05;
alpha2 = 0.25;
alpha3 = 0.25;
alpha4 = 0.52;
tend = 1000;
t = 0:1:tend;
p0 = 100;
dt = 1;
y = zeros(500,size(t,2));
y(1,1) = p0;
for generation = 2:tend+1 
    for species = 1:size(y,1)
        beta = beta_static*(1/species);
        if species == 1
            y(species,generation) = heun(y(species,generation-1),alpha1,beta,dt) + ...
                alpha4*(y(species+1,generation-1)) ...
                - alpha4*(y(species,generation-1)) ...
                + randi([-1,0])*(0.1*rand)*y(species,generation-1);

                
        elseif species == size(y,1)
            y(species,generation) = heun(y(species,generation-1),alpha1,beta,dt) + ...
                alpha4*(y(species-1,generation-1)) ...
                - alpha4*(y(species,generation-1))...
                + randi([-1,0])*(0.1*rand)*y(species,generation-1);
            
        else
            y(species,generation) = heun(y(species,generation-1),alpha1,beta,dt) + ...
                alpha2*(y(species+1,generation-1)) + ... 
                alpha3*(y(species-1,generation-1)) - ...
                alpha4*(y(species,generation-1))...
                + randi([-1,0])*(0.1*rand)*y(species,generation-1);
        end
    end
end
figure(1)
for i = 1:size(y,1)
    plot(t,y(i,:));
    hold on;
end
axis([0 tend 0 max(max(y)) + 0.2*max(max(y))])

function differential = diff(p,alpha,beta)
differential = (1-p/beta)*p*alpha;
end

function y = heun(p,alpha,beta,dt)
y_temp = p + dt*(diff(p,alpha,beta));
y = p + (dt/2)*(diff(p,alpha,beta) + diff(y_temp,alpha,beta));
end