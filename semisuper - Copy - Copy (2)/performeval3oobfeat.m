function [performancematAVG,performancematCAT]=performeval3oobfeat(forest,ntree,x,testsamples,y,ytrains,settest,y_eval,x_eval,cattrg,allleavesy,xlblused,ylblused,xtrain,usedsampleslog)%ytrains=ytrainset{1,j}

%generate a test sample: pick a group of instance from the unseen set
travg=ylblused;%ytrains;
settest=~settest;
%y_eval=cellfun(@isnumeric, y);
trmean=[];
for l=1:size(x_eval,2)
    if x_eval(1,l)==1
        trmean=[trmean,mean(xtrain(:,l))];
    end
end

testset=[];
testset=xtrain;%x(testsamples,:);
 
%[averages, categories]=multipletest2(forest,ntree,x,testset,y,x_eval,y_eval,cattrg,allleavesy);%%predictions of our mob forest
[averages, categories,treepreds]=multipletest2oob(forest,ntree,x,testset,y,x_eval,y_eval,cattrg,allleavesy,usedsampleslog);
%build realizations
realizedavgs=[];realizedcats=[];
for g=1:size(x,2)
    if x_eval(1,g)
    %for gg=1:size(testsamples,1)
    realizedavgs=[realizedavgs,xtrain(:,g)];%1st tree's test set(arbitrary)
    %end
    else
        %for gg=1:size(testsamples,1)
    realizedcats=[realizedcats,xtrain(:,g)];%1st tree's test set
    %end
    end
end
%compare predictions with their realizations
performancematAVG=[];
%averages=cell2mat(averages);
control=isnan(averages);
%averages=reshape(averages,size(averages,1),1);
%averages=averages';
%if ~isempty(averages)
%averages=averages(~control(:,1),:);
%realizedavgs=realizedavgs(~control(:,1),:);
%sumdeviation=[];
%oobestimation
for f=1:size(treepreds{1,1},2)
avers=[];
for r=1:size(treepreds,2)
    ekle=treepreds{1,r}{1,f};
    avers=[avers,ekle'];
end
allavers{1,f}=avers';
end
d=~usedsampleslog;
for p=1:size(allavers,2)
    treeav=d.*allavers{1,p};
    for g=1:ntree
     res=sum(treeav(:,1:g),2)./sum(d(:,1:g),2);%prediction of the tree or trees
     q=~isnan(res);%
     myrl=realizedavgs(q,p);
    ress=res(q);%use for deviation upper
    sumdev=(ress-myrl).^2;
   % sumdev2=(trmean(1,p)-myrl).^2;
    %ooberr(g,p)=sqrt(sum(sumdev)/sum(sumdev2));
  ooberr(g,p)=sum(sumdev);
    end
end
mins=min(ooberr);
maxs=max(ooberr);
for g=1:size(ooberr,2)
    for gg=1:size(ooberr,1)
    myoober(gg,g)=(ooberr(gg,g)-mins(1,g))/(maxs(1,g)-mins(1,g))  ;
    end
end
performancematAVG=myoober;
performancematCAT=[];
CC={};
for s=1:size(categories,1)
    for ss=1:size(categories,2)
    CC{s,ss}=categories(s,ss);
    end
end
realizedcats=num2cell(realizedcats);
control=cellfun(@isempty,CC);%isnan do not work for
if ~isempty(realizedcats)
    realizedcats=realizedcats(~control(:,1),:);
    CC=CC(~control(:,1),:);
    for h=1:size(realizedcats,2)
        acc=cellfun(@isequal, CC,realizedcats);
        performancematCAT=mean(acc);
    end
end





%end