mytimes16=[];
for iter=1:5
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
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('Nfultests.xlsx',mytimes16,1)
mytimes12=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:12
    myy{1,d}=y{1,d};
end
y=myy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('Nfultests.xlsx',mytimes12,2)
mytimes9=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:9
    myy{1,d}=y{1,d};
end
y=myy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('Nfultests.xlsx',mytimes9,3)
mytimes6=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:6
    myy{1,d}=y{1,d};
end
y=myy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('Nfultests.xlsx',mytimes6,4)
mytimes3=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:3
    myy{1,d}=y{1,d};
end
y=myy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('Nfultests.xlsx',mytimes3,5)
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:60,:);
end
for d=1:size(y,2)
    myyy{1,d}=y{1,d}(1:60,:);
end
x=myy;
y=myyy;
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
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N02tests.xlsx',mytimes16,1)
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:60,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:12
    myyy{1,d}=y{1,d}(1:60,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N02tests.xlsx',mytimes12,2)
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:60,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:9
    myyy{1,d}=y{1,d}(1:60,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N02tests.xlsx',mytimes9,3)
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:60,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:6
    myyy{1,d}=y{1,d}(1:60,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N02tests.xlsx',mytimes6,4)
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:60,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:3
    myyy{1,d}=y{1,d}(1:60,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N02tests.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:120,:);
end
for d=1:size(y,2)
    myyy{1,d}=y{1,d}(1:120,:);
end
x=myy;
y=myyy;
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
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N04tests.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:120,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:12
    myyy{1,d}=y{1,d}(1:120,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N04tests.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:120,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:9
    myyy{1,d}=y{1,d}(1:120,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N04tests.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:120,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:6
    myyy{1,d}=y{1,d}(1:120,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N04tests.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:120,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:3
    myyy{1,d}=y{1,d}(1:120,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N04tests.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:180,:);
    %myyy{1,d}=y{1,d}(1:180,:);
end
for d=1:size(y,2)
    myyy{1,d}=y{1,d}(1:180,:);
end
x=myy;
y=myyy;
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
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N06tests.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:180,:);
 end
x=myy;
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
sf=0;myyy={};
for d=1:12
    myyy{1,d}=y{1,d}(1:180,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N06tests.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:180,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:9
    myyy{1,d}=y{1,d}(1:180,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N06tests.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:180,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:6
    myyy{1,d}=y{1,d}(1:180,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N06tests.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:180,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:3
    myyy{1,d}=y{1,d}(1:180,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N06tests.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:240,:);
   % myyy{1,d}=y{1,d}(1:240,:);
end
for d=1:size(y,2)
    myyy{1,d}=y{1,d}(1:240,:);
end
x=myy;
y=myyy;
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
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N08tests.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:240,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:12
    myyy{1,d}=y{1,d}(1:240,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N08tests.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
  for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:240,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:9
    myyy{1,d}=y{1,d}(1:240,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N08tests.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:240,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:6
    myyy{1,d}=y{1,d}(1:240,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N08tests.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:240,:);
end
x=myy;
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
sf=0;myyy={};
for d=1:3
    myyy{1,d}=y{1,d}(1:240,:);
end
y=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N08tests.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
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
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('Nfultestsx.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:200
    myyy{1,d}=x{1,d};
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('Nfultestsx.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:156
    myyy{1,d}=x{1,d};
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('Nfultestsx.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:104
    myyy{1,d}=x{1,d};
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('Nfultestsx.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
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
sf=0;myyy={};
for d=1:52
    myyy{1,d}=x{1,d};
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('Nfultestsx.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:60,:);
    %myyy{1,d}=y{1,d}(1:60,:);
end
for d=1:size(y,2)
   % myy{1,d}=x{1,d}(1:60,:);
    myyy{1,d}=y{1,d}(1:60,:);
end
x=myy;
y=myyy;
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
 mydistmat=mydistmat(1:60,1:60);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N02testsx.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:60,:);
end
y=myy;
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
 mydistmat=mydistmat(1:60,1:60);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:200
    myyy{1,d}=x{1,d}(1:60,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N02testsx.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:60,:);
end
y=myy;
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
 mydistmat=mydistmat(1:60,1:60);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:156
    myyy{1,d}=x{1,d}(1:60,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N02testsx.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:60,:);
end
y=myy;
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
 mydistmat=mydistmat(1:60,1:60);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:104
    myyy{1,d}=x{1,d}(1:60,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N02testsx.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:60,:);
end
y=myy;
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
   mydistmat=mydistmat(1:60,1:60);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:52
    myyy{1,d}=x{1,d}(1:60,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N02testsx.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:120,:);
    %myyy{1,d}=y{1,d}(1:120,:);
end
for d=1:size(y,2)
   % myy{1,d}=x{1,d}(1:120,:);
    myyy{1,d}=y{1,d}(1:120,:);
end
x=myy;
y=myyy;
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
   mydistmat=mydistmat(1:120,1:120);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N04testsx.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:120,:);
end
y=myy;
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
   mydistmat=mydistmat(1:120,1:120);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:200
    myyy{1,d}=x{1,d}(1:120,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N04testsx.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:120,:);
end
y=myy;
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
   mydistmat=mydistmat(1:120,1:120);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:156
    myyy{1,d}=x{1,d}(1:120,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N04testsx.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:120,:);
end
y=myy;
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
   mydistmat=mydistmat(1:120,1:120);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:104
    myyy{1,d}=x{1,d}(1:120,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N04testsx.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:120,:);
end
y=myy;
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
  mydistmat=mydistmat(1:120,1:120);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:52
    myyy{1,d}=x{1,d}(1:120,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N04testsx.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:180,:);
    %myyy{1,d}=y{1,d}(1:180,:);
end
for d=1:size(y,2)
    %myy{1,d}=x{1,d}(1:120,:);
    myyy{1,d}=y{1,d}(1:180,:);
end
x=myy;
y=myyy;
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
  mydistmat=mydistmat(1:180,1:180);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N06testsx.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:180,:);
 end
y=myy;
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
  mydistmat=mydistmat(1:180,1:180);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:200
    myyy{1,d}=x{1,d}(1:180,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N06testsx.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:180,:);
end
y=myy;
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
  mydistmat=mydistmat(1:180,1:180);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:156
    myyy{1,d}=x{1,d}(1:180,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N06testsx.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:180,:);
end
y=myy;
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
  mydistmat=mydistmat(1:180,1:180);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:104
    myyy{1,d}=x{1,d}(1:180,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N06testsx.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:180,:);
end
y=myy;
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
 mydistmat=mydistmat(1:180,1:180);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:52
    myyy{1,d}=x{1,d}(1:180,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes3=[mytimes3;mytime];      
end
xlswrite('N06testsx.xlsx',mytimes3,5)
clear all 
mytimes16=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(x,2)
    myy{1,d}=x{1,d}(1:240,:);
    %myyy{1,d}=y{1,d}(1:240,:);
end
for d=1:size(y,2)
    %myy{1,d}=x{1,d}(1:120,:);
    myyy{1,d}=y{1,d}(1:240,:);
end
x=myy;
y=myyy;
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
 mydistmat=mydistmat(1:240,1:240);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes16=[mytimes16;mytime];      
end
xlswrite('N08testsx.xlsx',mytimes16,1)
clear all 
mytimes12=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:240,:);
end
y=myy;
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
 mydistmat=mydistmat(1:240,1:240);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:200
    myyy{1,d}=x{1,d}(1:240,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes12=[mytimes12;mytime];      
end
xlswrite('N08testsx.xlsx',mytimes12,2)
clear all 
mytimes9=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
  for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:240,:);
end
y=myy;
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
sf=0;myyy={};
mydistmat=mydistmat(1:240,1:240);
for d=1:156
    myyy{1,d}=x{1,d}(1:240,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes9=[mytimes9;mytime];      
end
xlswrite('N08testsx.xlsx',mytimes9,3)
clear all 
mytimes6=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
 for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:240,:);
end
y=myy;
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
mydistmat=mydistmat(1:240,1:240);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:104
    myyy{1,d}=x{1,d}(1:240,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat); 
mytimes6=[mytimes6;mytime];      
end
xlswrite('N08testsx.xlsx',mytimes6,4)
clear all 
mytimes3=[];
for iter=1:5
   filen=sprintf('oes97train_%d.txt',iter);
 [x,y]= readdata(filen,0,0,0,0,16,'r');
for d=1:size(y,2)
    myy{1,d}=y{1,d}(1:240,:);
end
y=myy;
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
 mydistmat=mydistmat(1:240,1:240);
maxleafsize=1;maxdepth=10000;ntree=100;sampfactor=0.7;nf=10;%%adjust these elements
cattrg=0;
categories=[];
categoriesx=[];
sf=0;myyy={};
for d=1:52
    myyy{1,d}=x{1,d}(1:240,:);
end
x=myyy;
mytime=kfoldcvfulltreev2_1tekdene_distmat_complex(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf,mydistmat)
mytimes3=[mytimes3;mytime];      
end
xlswrite('N08testsx.xlsx',mytimes3,5)