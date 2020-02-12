for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('calhousetrain_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,2,'r');
 filen2=sprintf('calhousexpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('calhouse_10pc_TRFtrans.xlsx', readyAVG,iter)
end
for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('oes10train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 filen2=sprintf('oes10xpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('oes10_10pc_TRFtrans.xlsx', readyAVG,iter)
end


for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 filen2=sprintf('oes97xpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('oes97_10pc_TRFtrans.xlsx', readyAVG,iter)
end
for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('wq1train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,14,'r');
 filen2=sprintf('wq1xpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('wq_10pc_TRFtrans.xlsx', readyAVG,iter)
end
for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('enbtrain_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,2,'r');
 filen2=sprintf('enbxpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('enb_10pc_TRFtrans.xlsx', readyAVG,iter)
end

for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('mp5spectrain_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,4,'r');
 filen2=sprintf('mp5xpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('mp5_10pc_TRFtrans.xlsx', readyAVG,iter)
end
for iter=1:10
      clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
filen=sprintf('mp6spectrain_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,4,'r');
 filen2=sprintf('mp6xpart_%d.csv',iter);
 nodeinfo=csvread(filen2);
 nodeinfo=nodeinfo(1:size(x{1,1},1),:);
 extdistmat=[];
 for d=1:size(nodeinfo,1)
     for dd=1:size(nodeinfo,1)
         cnt=0;
         for lid=1:size(nodeinfo,2)
             if nodeinfo(d,lid)==nodeinfo(dd,lid)
                 cnt=cnt+1;
             end
         end
         extdistmat(d,dd)=cnt;
     end
 end
 extdistmat=extdistmat./size(nodeinfo,2);
 mydistmat=sqrt(1-extdistmat);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;
[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
kfoldcvfulltreev2_1tekdene_distmat(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat);
readyAVG
xlswrite('mp6_10pc_TRFtrans.xlsx', readyAVG,iter)
end



