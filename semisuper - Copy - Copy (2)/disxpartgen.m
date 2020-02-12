for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('mp5spectrain_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,4,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('mp5xpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end

for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('mp6spectrain_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,4,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('mp6xpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end
clear all
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('oes10train_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,16,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('oes10xpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end

clear all
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('oes97train_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,16,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('oes97xpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end
clear all
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('wq1train_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,14,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('wq1xpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end
clear all
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('calhousetrain_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,2,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('calhousexpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end
clear all
for iter=1:10
    clear x y readyAVG readyAVGExt readyAVGExt2 readyAVGExt3 readyAVGExt4 readyAVGExt6 readyAVGExt7 readyCATS readyCATExt...
        readyCATExt2 readyCATExt3 readyCATExt4 readyCATExt6 readyCATExt7
    filen=sprintf('enbtrain_%d.txt',iter);
    [x,y]= readdata(filen,0,0,0,0,2,'r');
    disx=[];
    for p=1:size(x,2)
      disx=[disx,x{1,p}];  
    end
    filen2=sprintf('enbxpart_%d.txt',iter);
    dlmwrite(filen2,disx,'delimiter','\t')
end