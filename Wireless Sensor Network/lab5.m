%sheikh wasimuddin CSEIOT 61 LAB 5
clc;
clear;
close all;
T = 100;
dt = 1;
time = 0:dt:T;

P_active = 0.05;
P_sleep = 0.005;

S_MAC_active_time = 2;
S_MAC_sleep_time = 3;

S_MAC_state = zeros(size(time));
S_MAC_energy = zeros(size(time));

for i = 1:length(time)
    cycle = mod(time(i), S_MAC_active_time + S_MAC_sleep_time);

    if cycle < S_MAC_active_time
        S_MAC_state(i) = 1;
        power = P_active;
    else
        S_MAC_state(i) = 0;
        power = P_sleep;
    end

    if i == 1
        S_MAC_energy(i) = power * dt;
    else
        S_MAC_energy(i) = S_MAC_energy(i-1) + power * dt;
    end
end

B_MAC_active_time = 1;
B_MAC_sleep_time = 4;

B_MAC_state = zeros(size(time));
B_MAC_energy = zeros(size(time));

for i = 1:length(time)
    cycle = mod(time(i), B_MAC_active_time + B_MAC_sleep_time);

    if cycle < B_MAC_active_time
        B_MAC_state(i) = 1;
        power = P_active;
    else
        B_MAC_state(i) = 0;
        power = P_sleep;
    end

    if i == 1
        B_MAC_energy(i) = power * dt;
    else
        B_MAC_energy(i) = B_MAC_energy(i-1) + power * dt;
    end
end

fprintf('S-MAC Energy = %.4f J\n', S_MAC_energy(end));
fprintf('B-MAC Energy = %.4f J\n', B_MAC_energy(end));

figure;

subplot(2,1,1);
stairs(time, S_MAC_state, 'b', 'LineWidth', 2);
ylim([-0.2 1.2]);
yticks([0 1]);
yticklabels({'Sleep','Active'});
xlabel('Time (s)');
ylabel('State');
title('S-MAC Duty Cycle');
grid on;

subplot(2,1,2);
stairs(time, B_MAC_state, 'r', 'LineWidth', 2);
ylim([-0.2 1.2]);
yticks([0 1]);
yticklabels({'Sleep','Active'});
xlabel('Time (s)');
ylabel('State');
title('B-MAC Duty Cycle');
grid on;

figure;

plot(time, S_MAC_energy, 'b', 'LineWidth', 2);
hold on;
plot(time, B_MAC_energy, 'r', 'LineWidth', 2);

xlabel('Time (s)');
ylabel('Energy (J)');
title('S-MAC vs B-MAC Energy Consumption');
legend('S-MAC','B-MAC');
grid on;

figure;

bar([S_MAC_energy(end), B_MAC_energy(end)]);
set(gca, 'XTickLabel', {'S-MAC','B-MAC'});
ylabel('Total Energy (J)');
title('Energy Comparison');
grid on;
