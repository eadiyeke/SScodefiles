myresults=[];
 for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aenbtrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,2,'r');
    filen2=sprintf('enbtestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('enb_induct10singletar.txt',myresults)
    end
    %xlswrite('enb_induct10singletar.xlsx',myress,iter)
end

myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('amp5spectrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,4,'r');
    filen2=sprintf('mp5testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
    myress=[];
   for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('mp5_induct10singletar.xlsx',myress,iter)
   myresults=[myresults;myress];
    if iter==10
        dlmwrite('mp5_induct10singletar.txt',myresults)
    end
end
myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('amp6spectrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,4,'r');
    filen2=sprintf('mp6testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end  
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('mp6_induct10singletar.xlsx',myress,iter)
   myresults=[myresults;myress];
    if iter==10
        dlmwrite('mp6_induct10singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=6:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aoes10train_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    filen2=sprintf('oes10testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
      for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('oes10_induct10singletar.xlsx',myress,iter)
myresults=[myresults;myress];
    if iter==10
        dlmwrite('oes10_induct10singletar.txt',myresults)
    end
end
myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aoes97train_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    filen2=sprintf('oes97testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('oes97_induct10singletar.xlsx',myress,iter)
    % dlmwrite('oes97_induct10singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('oes97_induct10singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('awqtrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,14,'r');
    filen2=sprintf('wqtestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,14,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('wq_induct10singletar.xlsx',myress,iter)
     %dlmwrite('wq_induct10singletar.txt',myress,'-append','roffset',1)
     myresults=[myresults;myress];
    if iter==10
        dlmwrite('wq_induct10singletar.txt',myresults)
    end
end
myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('acalhousetrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,2,'r');
    filen2=sprintf('calhousetestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      [readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('calhouse_induct10singletar.xlsx',myress,iter)
    % dlmwrite('calhouse_induct10singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('calhouse_induct10singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aenbtrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,2,'r');
    filen2=sprintf('enbtestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      numlab=34;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('enb_induct5singletar.xlsx',myress,iter)
    % dlmwrite('enb_induct5singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('enb_induct5singletar.txt',myresults)
    end
end

myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('amp5spectrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,4,'r');
    filen2=sprintf('mp5testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
     numlab=31;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('mp5_induct5singletar.xlsx',myress,iter)
  % dlmwrite('mp5_induct5singletar.txt',myress,'-append','roffset',1)
   myresults=[myresults;myress];
    if iter==10
        dlmwrite('mp5_induct5singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('amp6spectrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,4,'r');
    filen2=sprintf('mp6testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
     numlab=31;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('mp6_induct5singletar.xlsx',myress,iter)
    %dlmwrite('mp6_induct5singletar.txt',myress,'-append','roffset',1)
     myresults=[myresults;myress];
    if iter==10
        dlmwrite('mp6_induct5singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aoes10train_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    filen2=sprintf('oes10testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
  numlab=18;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('oes10_induct5singletar.xlsx',myress,iter)
   %dlmwrite('oes10_induct5singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('oes10_induct5singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aoes97train_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    filen2=sprintf('oes97testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
     numlab=15;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('oes97_induct5singletar.xlsx',myress,iter)
   %dlmwrite('oes97_induct5singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('oes97_induct5singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('awqtrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,14,'r');
    filen2=sprintf('wqtestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,14,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      numlab=47;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('wq_induct5singletar.xlsx',myress,iter)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('wq_induct5singletar.txt',myresults)
    end
   %dlmwrite('wq_induct5singletar.txt',myress,'-append','roffset',1)
end
myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('acalhousetrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,2,'r');
    filen2=sprintf('calhousetestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      numlab=46;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('calhouse_induct5singletar.xlsx',myress,iter)
   % dlmwrite('calhouse_induct5singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('calhouse_induct5singletar.txt',myresults)
    end
end
myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aenbtrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,2,'r');
    filen2=sprintf('enbtestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      numlab=95;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);;
        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('enb_induct20singletar.xlsx',myress,iter)
   %dlmwrite('enb_induct20singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('enb_induct20singletar.txt',myresults)
    end
end

myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('amp5spectrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,4,'r');
    filen2=sprintf('mp5testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
     numlab=124;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('mp5_induct20singletar.xlsx',myress,iter)
     %dlmwrite('mp5_induct20singletar.txt',myress,'-append','roffset',1)
     myresults=[myresults;myress];
    if iter==10
        dlmwrite('mp5_induct20singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=9:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('amp6spectrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,4,'r');
    filen2=sprintf('mp6testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,4,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
     numlab=124;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('mp6_induct20singletar.xlsx',myress,iter)
   % dlmwrite('mp6_induct20singletar.txt',myress,'-append','roffset',1)
   myresults=[myresults;myress];
    if iter==10
        dlmwrite('mp6_induct20singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aoes10train_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    filen2=sprintf('oes10testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
  numlab=71;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('oes10_induct20singletar.xlsx',myress,iter)
     %dlmwrite('oes10_induct20singletar.txt',myress,'-append','roffset',1)
     myresults=[myresults;myress];
    if iter==10
        dlmwrite('oes10_induct20singletar.txt',myresults)
    end
end
myresults=[];
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('aoes97train_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    filen2=sprintf('oes97testset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,16,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
     numlab=59;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('oes97_induct20singletar.xlsx',myress,iter)
    % dlmwrite('oes97_induct20singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('oes97_induct20singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('awqtrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,14,'r');
    filen2=sprintf('wqtestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,14,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      numlab=190;
     nf=10;maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;cattrg=0;categories=[];categoriesx=[];sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
    %xlswrite('wq_induct20singletar.xlsx',myress,iter)
     %dlmwrite('wq_induct20singletar.txt',myress,'-append','roffset',1)
     myresults=[myresults;myress];
    if iter==10
        dlmwrite('wq_induct20singletar.txt',myresults)
    end
end
myresults=[]; 
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
   % p=xlsread('mp5_2.xlsx',g);
    filen=sprintf('acalhousetrain_%d.txt',iter);% already generated
   % dlmwrite(filen,p)
    [x,my_Y]= readdata(filen,0,0,0,0,2,'r');
    filen2=sprintf('calhousetestset_%d.txt',iter);
    [xtest,ytest]= readdata(filen2,0,0,0,0,2,'r');
    xIT=[];yIT=[];
    for t=1:size(xtest,2)
        xIT=[xIT,xtest{1,t}];
    end
    for t=1:size(ytest,2)
        yIT=[yIT,ytest{1,t}];
    end
     for t=1:size(x,2)
        x{1,t}=(x{1,t}-mean(x{:,t}))./std(x{:,t});
    end
    for t=1:size(xtest,2)
        xIT(:,t)=(xIT(:,t)-mean(xIT(:,t)))./std(xIT(:,t));
    end
    myress=[];
   % filen=sprintf('oes10train_%d.txt',iter);
    %[x,my_Y]= readdata(filen,0,0,0,0,16,'r');
    for p=1:size(my_Y,2)
        maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
        cattrg=0;
        categories=[];
        categoriesx=[];
        sf=0;
        y{1,1}=my_Y{1,p};
        my_yIT=yIT(:,p);
      numlab=184;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneSSinducT(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,numlab,xIT,my_yIT);

        myress=[myress, readyAVG];
    end
    myress
   % xlswrite('calhouse_induct20singletar.xlsx',myress,iter)
    % dlmwrite('calhouse_induct20singletar.txt',myress,'-append','roffset',1)
    myresults=[myresults;myress];
    if iter==10
        dlmwrite('calhouse_induct20singletar.txt',myresults)
    end
end