%sheikh wasimuddin lab 6 CSEIOT61 
clc;
clear;
close all;

N = 50;
M = 100;
E = ones(1,N)*0.5;
ETX = 50e-9;
EAMP = 100e-12;
BSx = 50;
BSy = 100;
P = 0.1;
R = 300;

X = rand(1,N)*M;
Y = rand(1,N)*M;

alive = zeros(1,R);
totalEnergy = zeros(1,R);

for r = 1:R

    active = find(E > 0);

    if isempty(active)
        break;
    end

    alive(r) = length(active);

    CH = active(rand(1,length(active)) < P);

    if isempty(CH)
        CH = active(randi(length(active)));
    end

    for k = active

        if any(CH == k)
            d = sqrt((X(k)-BSx)^2 + (Y(k)-BSy)^2);
            E(k) = E(k) - (ETX + EAMP*d^2);
        else
            d = sqrt((X(k)-X(CH)).^2 + (Y(k)-Y(CH)).^2);
            d = min(d);
            E(k) = E(k) - (ETX + EAMP*d^2);
        end

        if E(k) < 0
            E(k) = 0;
        end
    end

    totalEnergy(r) = sum(E);
end

lastRound = find(alive>0,1,'last');

figure;
plot(1:lastRound,alive(1:lastRound),'LineWidth',2);
xlabel('Number of Rounds');
ylabel('Number of Alive Nodes');
title('LEACH Network Lifetime');
grid on;

figure;
plot(1:lastRound,totalEnergy(1:lastRound),'r','LineWidth',2);
xlabel('Number of Rounds');
ylabel('Residual Energy (J)');
title('LEACH Energy Consumption');
grid on;

fprintf('Total Nodes = %d\n',N);
fprintf('Network Lifetime = %d rounds\n',lastRound);
fprintf('Alive Nodes at End = %d\n',alive(lastRound));
