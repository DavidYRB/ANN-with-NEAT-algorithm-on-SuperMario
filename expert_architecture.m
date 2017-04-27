function expert_architecture(MarioView_mat,A,B)
Vision_Sec1 = MarioView_mat(A(1):A(1+1),B(1):B(1+1),:);
Vision_Sec2 = MarioView_mat(A(1):A(1+1),B(2):B(2+1),:);
Vision_Sec3 = MarioView_mat(A(2):A(2+1),B(1):B(1+1),:);
Vision_Sec4 = MarioView_mat(A(2):A(2+1),B(2):B(2+1),:);
end