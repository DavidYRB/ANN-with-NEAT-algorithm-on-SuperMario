load('Human.mat')
MarioView = find_MarioView(Attri_FBF(:,2),Attri_FBF(:,3),6,0);
Vision = expert_architecture(MarioView,[1,4,12],[1,5,12]);
ActionLabel = KeyStatus2Label(Attri_FBF(:,4:end));
net1 = ann(Vision.sec1,ActionLabel);
net2 = ann(Vision.sec2,ActionLabel);
net3 = ann(Vision.sec3,ActionLabel);
net4 = ann(Vision.sec4,ActionLabel);

NEAT_input = [net1(Vision.sec1')',net2(Vision.sec2')',net3(Vision.sec3')',net4(Vision.sec4')'];


class = ActionLabel;

target = zeros(size(ActionLabel,1),7);
for i = 1:size(ActionLabel,1)
    for j = 1:7
       if class(i) == j
            target(i,j) = 1;
       end
    end
end