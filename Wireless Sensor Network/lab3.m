%sheikh wasimuddin CSEIOT 61 LAB 3
clc;
clear;
close all;
sensor.position=[40 40];
sensor.energy=120;
sensor.senseRange=15;
sensor.commRange=55;
gateway.position=[75 70];
limit=28;
txEnergy=8;
fprintf('============================================\n');
fprintf('        SINGLE NODE WSN MODEL\n');
fprintf('============================================\n');
fprintf('\n--- NODE INFORMATION ---\n');
fprintf('Sensor Position            : (%.2f, %.2f) m\n',sensor.position(1),sensor.position(2));
fprintf('Initial Energy             : %.2f J\n',sensor.energy);
fprintf('Sensing Range              : %.2f m\n',sensor.senseRange);
fprintf('Communication Range        : %.2f m\n',sensor.commRange);
fprintf('Base Station Position      : (%.2f, %.2f) m\n',gateway.position(1),gateway.position(2));
fprintf('\n============================================\n');
fprintf('              SENSING PHASE\n');
fprintf('============================================\n');
measuredValue=24+2*randn;
fprintf('Sensor is collecting environmental data...\n');
fprintf('Measured Temperature       : %.2f degree C\n',measuredValue);
fprintf('\n============================================\n');
fprintf('             PROCESSING PHASE\n');
fprintf('============================================\n');
fprintf('Temperature Limit          : %.2f degree C\n',limit);
if measuredValue>=limit
    result=1;
    condition='HIGH';
    fprintf('Processed Result           : Temperature HIGH\n');
else
    result=0;
    condition='NORMAL';
    fprintf('Processed Result           : Temperature NORMAL\n');
end
fprintf('Processed Data             : %d\n',result);
fprintf('\n============================================\n');
fprintf('           COMMUNICATION PHASE\n');
fprintf('============================================\n');
dx=sensor.position(1)-gateway.position(1);
dy=sensor.position(2)-gateway.position(2);
linkDistance=hypot(dx,dy);
fprintf('Distance to Base Station   : %.2f m\n',linkDistance);
if linkDistance<=sensor.commRange
    fprintf('Communication Status       : WITHIN RANGE\n');
    fprintf('Data Transmission          : SUCCESSFUL\n');
    sensor.energy=sensor.energy-txEnergy;
    fprintf('Transmission Energy Used   : %.2f J\n',txEnergy);
else
    fprintf('Communication Status       : OUT OF RANGE\n');
    fprintf('Data Transmission          : FAILED\n');
end
fprintf('\n============================================\n');
fprintf('              ENERGY STATUS\n');
fprintf('============================================\n');
fprintf('Initial Energy             : 120.00 J\n');
fprintf('Remaining Energy           : %.2f J\n',sensor.energy);
fprintf('Energy Consumed            : %.2f J\n',120-sensor.energy);
fprintf('\n============================================\n');
fprintf('              FINAL RESULT\n');
fprintf('============================================\n');
fprintf('Measured Temperature       : %.2f degree C\n',measuredValue);
fprintf('Temperature Status         : %s\n',condition);
fprintf('Processed Data             : %d\n',result);
fprintf('Node-to-BS Distance        : %.2f m\n',linkDistance);
if linkDistance<=sensor.commRange
    fprintf('Communication              : SUCCESSFUL\n');
else
    fprintf('Communication              : FAILED\n');
end
fprintf('Remaining Node Energy      : %.2f J\n',sensor.energy);
figure('Name','Single Node Network','Color','w');
scatter(sensor.position(1),sensor.position(2),140,'filled','b');
hold on;
scatter(gateway.position(1),gateway.position(2),140,'filled','r','s');
phi=0:0.01:2*pi;
plot(sensor.position(1)+sensor.senseRange*cos(phi),sensor.position(2)+sensor.senseRange*sin(phi),'c-.','LineWidth',1.5);
plot(sensor.position(1)+sensor.commRange*cos(phi),sensor.position(2)+sensor.commRange*sin(phi),'b:','LineWidth',1.8);
if linkDistance<=sensor.commRange
    plot([sensor.position(1) gateway.position(1)],[sensor.position(2) gateway.position(2)],'g-','LineWidth',2);
end
text(sensor.position(1)+2,sensor.position(2)+2,'Sensor Node','FontWeight','bold');
text(gateway.position(1)+2,gateway.position(2)+2,'Base Station','FontWeight','bold');
xlabel('X Position (m)');
ylabel('Y Position (m)');
title('Single Node Wireless Sensor Network');
grid on;
axis equal;
xlim([0 110]);
ylim([0 110]);
legend('Sensor Node','Base Station','Sensing Range','Communication Range','Communication Link','Location','best');
hold off;