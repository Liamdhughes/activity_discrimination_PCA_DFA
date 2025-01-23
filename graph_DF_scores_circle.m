function y = graph_scores(scores,DFA_scores,A,B,boundaries);

%% This code plots the df scores in two dimensions, also superimposing circles around the centroid with a radius of 1 STD%% 


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
