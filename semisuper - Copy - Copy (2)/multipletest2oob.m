function [averages, categories,treepreds]=multipletest2oob(forest,ntree,x,testset,y,x_eval,y_eval,cattrg,allleavesy,usedsampleslog)
%testset=gentest(x,testfactor);
ninst=size(testset,1);
averages=[];categories=[];
%FFavg=[];FFcat=[];
for n=1:ninst
    %[P1,P2,AVG,CTG,ffinalCAT,ffinalAVG]= forestprediction3(forest,ntree,testset(n,:),x,y,x_eval,y_eval,allleavesy);
    [P1,P2,AVG,CTG,ffinalCAT,ffinalAVG,tss]= forestprediction3oob(forest,ntree,testset(n,:),x,y,x_eval,y_eval,allleavesy,usedsampleslog);
    averages(n,:)=AVG;
    if cattrg~=0
    categories(n,:)=CTG;
    end
    treepreds{1,n}=tss;
    %categories{n,1}=Categories{n,1}{1,1};
     %FF(n,1)=ffinalAVG;
    %FFcat(n,1)=ffinalCAT;
end

end