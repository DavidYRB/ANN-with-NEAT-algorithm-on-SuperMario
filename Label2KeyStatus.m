function KeyStatus = Label2KeyStatus(Label)
% INPUT: [JUMP, -->, --> + JUMP, No action, JUMP + DASH, --> + DASH, --> + JUMP + DASH]
% OUTPUT: Corresponding keys in the game
X = Label;
Label_Class = [0,0,1,0;0,1,0,0;0,1,1,0;0,0,0,0;0,0,1,1;0,1,0,1;0,1,1,1];
% find(ismember(Label_Class,X,'rows'))
KeyStatus = Label_Class(X,:);
return
end