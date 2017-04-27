function Label = KeyStatus2Label(KeyStatus)
% INPUT: KeyStatus = [CurrentFrameNo, Mario_Pos_Ind_X ,Mario_Pos_Ind_Y, <-- ,-->,jump,dash]
% In our case, we can only use [CurrentFrameNo, Mario_Pos_Ind_X ,Mario_Pos_Ind_Y,-->,jump,dash]
% OUTPUT: Label is a 7-dim vector corresponding to the possible action:
% [JUMP, -->, --> + JUMP, No action, JUMP + DASH, --> + DASH, --> + JUMP + DASH]
X = KeyStatus;
JUMP = [0 0 1 0];
FORWARD = [0 1 0 0];
JUMP_FORW = JUMP + FORWARD;
No_action = [0 0 0 0];
DASH = [0 0 0 1];
JUMP_DASH = JUMP + DASH;
FORWARD_DASH = FORWARD + DASH;
JUMP_DASH_FORW = JUMP_DASH + FORWARD;

Label_Class = [JUMP; FORWARD; JUMP_FORW; No_action; JUMP_DASH; FORWARD_DASH; JUMP_DASH_FORW];
% find(ismember(Label_Class,X,'rows'))
Label = [];
for i = 1:size(X,1)
    if isempty(find(ismember(Label_Class,X(i,:),'rows'),1))
        a = 4;
    else a = find(ismember(Label_Class,X(i,:),'rows'),1);
    end
    Label = [Label; a];
end
return
end