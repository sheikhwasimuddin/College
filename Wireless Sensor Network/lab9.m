%sheikh wasimuddin lab 9 CSEIOT61 
clc;
clear;
close all;

nodes=6;
steps=30;
nodeState=ones(nodes,steps);
eventData=floor(rand(nodes,steps)*4)+1;

for n=1:nodes
    currentState=1;
    for k=1:steps
        switch currentState
            case 1
                if eventData(n,k)==1
                    currentState=2;
                end
            case 2
                if eventData(n,k)==2
                    currentState=3;
                elseif eventData(n,k)==4
                    currentState=1;
                end
            case 3
                if eventData(n,k)==3
                    currentState=4;
                end
            case 4
                if eventData(n,k)==4
                    currentState=1;
                end
        end
        nodeState(n,k)=currentState;
    end
end

figure;
imagesc(nodeState);
colormap(turbo(4));
cb=colorbar;
cb.Ticks=1:4;
cb.TickLabels={'Idle','Active','Processing','Transmitting'};
xlabel('Time Step');
ylabel('Sensor Node');
title('Event Driven Node State Simulation');
set(gca,'FontSize',11);

figure;
for n=1:nodes
    subplot(nodes,1,n);
    stairs(1:steps,nodeState(n,:),'LineWidth',1.6);
    ylim([0.5 4.5]);
    yticks(1:4);
    yticklabels({'Idle','Active','Processing','Transmit'});
    ylabel(['Node ' num2str(n)]);
    grid on;
end
xlabel('Time Step');
sgtitle('State Transitions of Multiple Nodes');
