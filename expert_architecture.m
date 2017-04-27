function Vision = expert_architecture(MarioView_mat,A,B)
Vision_Sec1 = MarioView_mat(A(1):A(1+1),B(1):B(1+1),:);
Vision_Sec2 = MarioView_mat(A(1):A(1+1),B(2):B(2+1),:);
Vision_Sec3 = MarioView_mat(A(2):A(2+1),B(1):B(1+1),:);
Vision_Sec4 = MarioView_mat(A(2):A(2+1),B(2):B(2+1),:);
Vision.sec1 = [];
Vision.sec2 = [];
Vision.sec3 = [];
Vision.sec4 = [];
for i = 1:size(MarioView_mat,3)
    Vision.sec1 = [Vision.sec1; reshape(Vision_Sec1(:,:,i)',1,(size(Vision_Sec1,1)*size(Vision_Sec1,2)))];
    Vision.sec2 = [Vision.sec2; reshape(Vision_Sec2(:,:,i)',1,(size(Vision_Sec2,1)*size(Vision_Sec2,2)))];
    Vision.sec3 = [Vision.sec3; reshape(Vision_Sec3(:,:,i)',1,(size(Vision_Sec3,1)*size(Vision_Sec3,2)))];
    Vision.sec4 = [Vision.sec4; reshape(Vision_Sec4(:,:,i)',1,(size(Vision_Sec4,1)*size(Vision_Sec4,2)))];
end

end