%sheikh wasimuddin lab 7 CSEIOT61 

clc;
clear;
close all;

n=20;
k=3;
L=100;

rng('shuffle');
p=L*rand(n,2);

d=pdist2(p,p);
grp=zeros(n,1);
cent=p(randperm(n,k),:);

for t=1:15
    for i=1:n
        [~,grp(i)]=min(sum((cent-p(i,:)).^2,2));
    end
    for j=1:k
        q=find(grp==j);
        if ~isempty(q)
            cent(j,:)=mean(p(q,:),1);
        end
    end
end

head=zeros(k,1);

for j=1:k
    q=find(grp==j);
    dd=sqrt(sum((p(q,:)-cent(j,:)).^2,2));
    [~,z]=min(dd);
    head(j)=q(z);
end

figure;
hold on;
grid on;
box on;

for j=1:k
    q=find(grp==j);
    plot(p(q,1),p(q,2),'o','MarkerSize',7);

    for r=1:length(q)
        if q(r)~=head(j)
            plot([p(q(r),1) p(head(j),1)],[p(q(r),2) p(head(j),2)],'--');
        end
    end

    plot(p(head(j),1),p(head(j),2),'p','MarkerSize',15,'MarkerFaceColor','r');
end

for i=1:n
    text(p(i,1)+1,p(i,2)+1,['N' num2str(i)]);
end

for j=1:k
    text(p(head(j),1)+2,p(head(j),2)+2,['CH' num2str(j)],'FontWeight','bold');
end

title('Wireless Sensor Network Clustering');
xlabel('X Position');
ylabel('Y Position');
axis([0 L 0 L]);
hold off;

fprintf('\nCLUSTERING RESULTS\n');

for j=1:k
    fprintf('\nCluster %d\n',j);
    fprintf('Cluster Head: N%d\n',head(j));
    q=find(grp==j);
    fprintf('Members: ');
    fprintf('N%d ',q);
    fprintf('\n');
end
