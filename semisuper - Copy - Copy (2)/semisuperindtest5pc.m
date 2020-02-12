for g=1:10
     %p=xlsread('mp5_2.xlsx',g);
     filen=sprintf('amp5spectrain_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,4,'r');
     filen2=sprintf('mp5testset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     numlab=31;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pcmp5.xlsx',readyAVG,g)
end

for g=1:10
     %p=xlsread('mp6_2_master.xlsx',g);
     filen=sprintf('amp6spectrain_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,4,'r');
     filen2=sprintf('mp6testset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
       numlab=31;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pcmp6.xlsx',readyAVG,g)
end

for g=1:10
     %p=xlsread('enbmasterset.xlsx',g);
     filen=sprintf('aenbtrain_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,2,'r');
     filen2=sprintf('enbtestset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     numlab=34;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pcenb.xlsx',readyAVG,g)
end


for g=1:10
     %p=xlsread('calhousemastersets.xlsx',g);
     filen=sprintf('acalhousetrain_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,2,'r');
     filen2=sprintf('calhousetestset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
     numlab=46;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pccalhouse.xlsx',readyAVG,g)
end

for g=1:10
     %p=xlsread('oes97masterset.xlsx',g);
     filen=sprintf('aoes97train_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,16,'r');
     filen2=sprintf('oes97testset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
     numlab=15;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pcoes97.xlsx',readyAVG,g)
end


for g=1:10
     %p=xlsread('wqmasterset.xlsx',g);
     filen=sprintf('awqtrain_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,14,'r');
     filen2=sprintf('wqtestset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,14,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     numlab=47;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pcwq.xlsx',readyAVG,g)
end

for g=1:10
     %p=xlsread('oes10masterset.xlsx',g);
     filen=sprintf('aoes10train_%d.txt',g);
     %dlmwrite(filen,p)
     [x,y]= readdata(filen,0,0,0,0,16,'r');
     filen2=sprintf('oes10testset_%d.txt',g);
     [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
     xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
     for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
     end
     numlab=18;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,yIT)
xlswrite('new_INDTEST5pcoes10.xlsx',readyAVG,g)
end



