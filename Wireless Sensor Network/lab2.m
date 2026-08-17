
clc;
clear;
close all;
n = 20;
L = 100;
W = 100;
x = rand(1,n) * L;
y = rand(1,n) * W;
figure;
plot(x, y, 'bo', 'MarkerFaceColor', 'b', 'MarkerSize', 8);
grid on;
xlabel('X Coordinate');
ylabel('Y Coordinate');
title('Random Deployment of Sensor Nodes');
xlim([0 L]);
ylim([0 W]);