function y = graph_scores(scores,DFA_scores,A,B,boundaries);

% subplot(2,2,1)
% plot(scores(1,1:boundaries(1)),scores(2,1:boundaries(1)),'ro','markerfacecolor','r')
% hold on
% plot(scores(1,(boundaries(1)+1):boundaries(2)),scores(2,(boundaries(1)+1):boundaries(2)),'ko','markerfacecolor','k')
% plot(scores(1,(boundaries(2)+1):end),scores(2,(boundaries(2)+1):end),'co','markerfacecolor','c')
% grid on
% xlabel('PC score No 1')
% ylabel('PC score No 2')
% axis tight
% title(['Sensor No ',num2str(A),' Individual ',num2str(B)])
% 
% legend('self selected','slow walk','fast walk')
% 
% subplot(2,2,2)
% plot(scores(1,1:boundaries(1)),scores(3,1:boundaries(1)),'ro','markerfacecolor','r')
% hold on
% plot(scores(1,(boundaries(1)+1):boundaries(2)),scores(3,(boundaries(1)+1):boundaries(2)),'ko','markerfacecolor','k')
% plot(scores(1,(boundaries(2)+1):end),scores(3,(boundaries(2)+1):end),'co','markerfacecolor','c')
% grid on
% xlabel('PC score No 1')
% ylabel('PC score No 3')
% axis tight
% title(['Sensor No ',num2str(A),' Individual ',num2str(B)])
% 
% 
% 
% subplot(2,2,3)
% plot(scores(2,1:boundaries(1)),scores(4,1:boundaries(1)),'ro','markerfacecolor','r')
% hold on
% plot(scores(2,(boundaries(1)+1):boundaries(2)),scores(4,(boundaries(1)+1):boundaries(2)),'ko','markerfacecolor','k')
% plot(scores(2,(boundaries(2)+1):end),scores(4,(boundaries(2)+1):end),'co','markerfacecolor','c')
% grid on
% xlabel('PC score No 2')
% ylabel('PC score No 4')
% axis tight
% title(['Sensor No ',num2str(A),' Individual ',num2str(B)])
% 
% 
% 
% subplot(2,2,4)
plot(DFA_scores(1:boundaries(1),1),DFA_scores(1:boundaries(1),2),'ro','markerfacecolor','r')
hold on
plot(DFA_scores((boundaries(1)+1):boundaries(2),1),DFA_scores((boundaries(1)+1):boundaries(2),2),'ko','markerfacecolor','k')
plot(DFA_scores((boundaries(2)+1):end,1),DFA_scores((boundaries(2)+1):end,2),'co','markerfacecolor','c')
grid on
xlabel('DF score No 1')
ylabel('DF score No 2')
axis tight
colors = {'r','k','c'}; % list of markerface colors
alpha_val = 0.5; % transparency level (0-1)
for i = 1:length(boundaries)
    if i == 1
        data = DFA_scores(1:boundaries(1),:);
    elseif i == 2
        data = DFA_scores((boundaries(1)+1):boundaries(2),:);
    else
        data = DFA_scores((boundaries(2)+1):end,:);
    end
    radius_val = std(data);
    scatter(DFA_scores(boundaries(i),1), DFA_scores(boundaries(i),2), (ones(1,length(DFA_scores(boundaries(i),1)))*(radius_val*50)), colors{i},'filled','MarkerFaceAlpha',alpha_val);
end
