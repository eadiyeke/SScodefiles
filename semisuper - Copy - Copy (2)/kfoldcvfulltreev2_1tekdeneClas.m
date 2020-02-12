function[readyAVG,readyAVGExt,readyAVGExt2,readyAVGExt3,readyAVGExt4,readyAVGExt6,readyAVGExt7,readyCATS,readyCATExt,readyCATExt2,readyCATExt3,readyCATExt4,readyCATExt6,readyCATExt7]=...
    kfoldcvfulltreev2_1tekdeneClas(x,y,nf,maxleafsize,maxdepth,ntree,sampfactor,cattrg,categories,categoriesx,sf)
[xtrainset,ytrainset,r,T]= cvsets(x,y,nf);
y_eval=logical(zeros(1,size(y,2)));%cellfun(@isnumeric, y);
x_eval=cellfun(@isnumeric, x);
finalAVG={};finalCAT={};
%pnode=0;pnodep=1;maxleafsize=5;maxdepth=8;depth=1;ntree=5;sampfactor=0.7;
pnode=0;pnodep=1;depth=1;
oobCATf=[];oobAVGf=[];
categories=categories';
categories=nominal(categories);
categories=categories';

categoriesx=categoriesx';
categoriesx=nominal(categoriesx);
categoriesx=categoriesx';
%
yfull=[];xfull=[];
for jj=1:size(y_eval,2)
%     if  ~y_eval(1,jj)
%         for i=1:size(y{1,1},1)
%             for kk=1:size(categories,2)%categories'i 'N' seklinde nominal ver
%                 if y{1,jj}{i,1}==categories(1,kk);
%                     yfull(i,jj)=kk-1;
%                     %ytrainset{1,j}{1,jj}{i,1}=kk-1;
%                 end
%             end
%         end
%     else
        c=y{1,jj};
        yfull=[yfull c];
%         
%     end
end
if sf
    for jj=1:size(x_eval,2)
        if jj==1
            categoriesx=['A','B','C','D','E','F','H'];
        elseif jj==2
            categoriesx=['X','R','S','A','H','K'];
        elseif jj==3
            categoriesx=['X','O','I','C'];
        elseif jj==4||jj==7||jj==9||jj==10
            categoriesx=['A','B'];
        else
            categoriesx=['A','B','C'];
        end
        if  ~x_eval(1,jj)
            for i=1:size(x{1,1},1)
                for kk=1:size(categoriesx,2)%categories'i 'N' seklinde nominal ver
                    if x{1,jj}{i,1}==categoriesx(1,kk);
                        xfull(i,jj)=kk-1;
                        %ytrainset{1,j}{1,jj}{i,1}=kk-1;
                    end
                end
            end
        else
            cc=x{1,jj};
            xfull=[xfull cc];
            
        end
    end
else
    for jj=1:size(x_eval,2)
        if  ~x_eval(1,jj)
            for i=1:size(x{1,1},1)
                for kk=1:size(categoriesx,2)%categories'i 'N' seklinde nominal ver
                    if x{1,jj}{i,1}==categoriesx(1,kk);
                        xfull(i,jj)=kk-1;
                        %ytrainset{1,j}{1,jj}{i,1}=kk-1;
                    end
                end
            end
        else
            cc=x{1,jj};
            xfull=[xfull cc];
            
        end
    end
end

%xfull=zscore(xfull);
%yfull=zscore(yfull);
for j=1:1%nf
    ytrain_=[];xtrain_=[];ytrain=[];xtrain=[];
    for jj=1:size(y_eval,2)
%         if  ~y_eval(1,jj)
%             for i=1:size(ytrainset{1,1}{1,1},1)
%                 for kk=1:size(categories,2)%categories'i 'N' seklinde nominal ver
%                     if ytrainset{1,j}{1,jj}{i,1}==categories(1,kk);
%                         ytrain_(i,jj)=kk-1;
%                         %ytrainset{1,j}{1,jj}{i,1}=kk-1;
%                     end
%                 end
%             end
%         else
            c=ytrainset{1,j}(:,jj);
            ytrain_=[ytrain_ cell2mat(c)];
%             
%         end
    end
    ytrain=ytrain_;
    
    for jj=1:size(x_eval,2)
        if sf
            if jj==1
                categoriesx=['A','B','C','D','E','F','H'];
            elseif jj==2
                categoriesx=['X','R','S','A','H','K'];
            elseif jj==3
                categoriesx=['X','O','I','C'];
            elseif jj==4||jj==7||jj==9||jj==10
                categoriesx=['A','B'];
            else
                categoriesx=['A','B','C'];
            end
            if  ~x_eval(1,jj)
                for i=1:size(xtrainset{1,1}{1,1},1)
                    for kk=1:size(categoriesx,2)%categories'i 'N' seklinde nominal ver
                        if xtrainset{1,j}{1,jj}{i,1}==categoriesx(1,kk);
                            xtrain_(i,jj)=kk-1;
                            %ytrainset{1,j}{1,jj}{i,1}=kk-1;
                        end
                    end
                end
            else
                cc=xtrainset{1,j}(:,jj);
                xtrain_=[xtrain_ cell2mat(cc)];
                
            end
        else
            if  ~x_eval(1,jj)
                for i=1:size(xtrainset{1,1}{1,1},1)
                    for kk=1:size(categoriesx,2)%categories'i 'N' seklinde nominal ver
                        if xtrainset{1,j}{1,jj}{i,1}==categoriesx(1,kk);
                            xtrain_(i,jj)=kk-1;
                            %ytrainset{1,j}{1,jj}{i,1}=kk-1;
                        end
                    end
                end
            else
                cc=xtrainset{1,j}(:,jj);
                xtrain_=[xtrain_ cell2mat(cc)];
                
            end
        end
        
    end
    xtrain=xtrain_;
    
    
    %xtrain=zscore(xtrain);
    %ytrain=zscore(ytrain);
    
    
   % profile on
    %[forest1_1,usedsamps,testsamples,usedsampleslog]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,5,0);%cd için 2yi 1 yap
      %[forest1_1,usedsamps,testsamples,usedsampleslog]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,2,0);%cd için 2yi 1 yap
       % [forest1_1,usedsamps,testsamples,usedsampleslog]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,3,0);%rankbased için 2yi 3 yap
   %  profile off
 

   [forest1_1,usedsamps,testsamples,usedsampleslog,comb,allleaves,unl,allleavesy, allunlabeled]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,3,0,xfull(r(:,j),:),yfull(r(:,j),:));%rankbased için 2yi 1 yap
       %  [forest1_1,usedsamps,testsamples,usedsampleslog]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,1,0);%rankbased için 2yi 1 yap
          %  [forest1_1,usedsamps,testsamples,usedsampleslog]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,6,0);%random slection
    % profile on
    %[forest3_1,xx]=appendoutextv2(x_eval,y_eval,ntree,xtrain,ytrain,maxleafsize,maxdepth,2,sampfactor);
    % profile off
    %[forest4_1,xx]=appendoutextv2true(x_eval,y_eval,ntree,xtrain,ytrain,maxleafsize,maxdepth,2,sampfactor);
    %[forest4_1,usedsamps,testsamples,usedsampleslog]=dtforest3(x_eval,y_eval,ntree,sampfactor,xtrain,ytrain,maxleafsize,maxdepth,2,1);
    
    % [forest5_1,xx]=appendoutextv2_ran(ntree,x,y,maxleafsize,maxdepth,2,sampfactor);
    
    %[forest5_1,usedsamps,testsamples,usedsampleslog,xx]=appendoutextran(ntree,x,y,maxleafsize,maxdepth,usedsamps,testsamples,usedsampleslog,1);
    
    
    %
    % [forest6_1,usedsamps,testsamples,usedsampleslog,xx]=appendoutextss(ntree,x,y,maxleafsize,maxdepth,usedsamps,testsamples,usedsampleslog,1);
    %
    
    
    oobAVG1=[]; oobCAT1=[];oobAVG2=[]; oobCAT2=[];oobAVG3=[]; oobCAT3=[];oobAVG4=[]; oobCAT4=[];
    oobAVG5=[]; oobCAT5=[];oobAVG6=[]; oobCAT6=[]; oobAVG7=[]; oobCAT7=[];
    for ntreecnt=ntree:ntree
        [performancematAVG1,performancematCAT1]=performeval3(forest1_1,ntreecnt,xfull,r(:,j),yfull,ytrain,T(:,j),y_eval,x_eval,cattrg,allleavesy,xfull(r(:,j),:),yfull(r(:,j),:),xtrain);
        %if cattrg==1
         %    [performancematAVG3,performancematCAT3]=performeval3ext(forest3_1,ntreecnt,xfull,r(:,j),yfull,ytrain,T(:,j),1,y_eval,[x_eval ones(1,size(y_eval,2)) 1],cattrg);%up to now u deal with targets with 2 cats. 1 is responsible for scores
        %else
        %   [performancematAVG3,performancematCAT3]=performeval3ext(forest3_1,ntreecnt,xfull,r(:,j),yfull,ytrain,T(:,j),1,y_eval,[x_eval ones(1,size(y_eval,2))],cattrg);  
      %  end
       
       % [performancematAVG5,performancematCAT5]=performeval3ext(forest3_1,ntreecnt,xfull,r(:,j),yfull,ytrain,T(:,j),4,y_eval,x_eval,cattrg);
        %[performancematAVG6,performancematCAT6]=performeval3ext(forest4_1,ntreecnt,xfull,r(:,j),yfull,ytrain,T(:,j),1,y_eval,[x_eval ones(1,size(y_eval,2))],cattrg);
        %[performancematAVG7,performancematCAT7]=performeval3ext(forest4_1,ntreecnt,xfull,r(:,j),yfull,ytrain,T(:,j),4,y_eval,x_eval,cattrg);
        oobAVG1=[oobAVG1;performancematAVG1];
        oobCAT1=[oobCAT1;performancematCAT1];
%        oobAVG3=[oobAVG3;performancematAVG3];
      %  oobCAT3=[oobCAT3;performancematCAT3];
      %  oobAVG5=[oobAVG5;performancematAVG5];
       % oobCAT5=[oobCAT5;performancematCAT5];
         % oobAVG6=[oobAVG6;performancematAVG6];
         %oobCAT6=[oobCAT6;performancematCAT6];
         % oobAVG7=[oobAVG7;performancematAVG7];
         %oobCAT7=[oobCAT7;performancematCAT7];
        
    end
    for t=1:size(oobAVG1,2)
        disoobAVG{j,t}=oobAVG1(:,t);
        
%        disoobAVG3{j,t}=oobAVG3(:,t);
        
 %       disoobAVG5{j,t}=oobAVG5(:,t);
        
      %  disoobAVG6{j,t}=oobAVG6(:,t);
      %   disoobAVG7{j,t}=oobAVG7(:,t);
        
    end
    if isempty(oobAVG1)
        disoobAVG=[];
    end
    %%disoobCAT7{j,t}=oobCAT7(:,t);
    for t=1:size(oobCAT1,2)
        disoobCAT{j,t}=oobCAT1(:,t);
        
    %    disoobCAT3{j,t}=oobCAT3(:,t);
        
    %    disoobCAT5{j,t}=oobCAT5(:,t);
        
      %  disoobCAT6{j,t}=oobCAT6(:,t);
       %  disoobCAT7{j,t}=oobCAT7(:,t);
        
    end
    %oobAVGf=[oobAVGf;oobAVG];
    %oobCATf=[oobCATf;oobCAT];
    %[performancematAVG,performancematCAT]=performeval(forest,ntree,x,r(:,j),y);
    %finalAVG{j}=performancematAVG;finalCAT{j}=performancematCAT;
    fprintf('fold %d completed\n', j);
end

nf=1;

if ~isempty(disoobAVG)
    for i=1:size(disoobAVG,2)
        r=[];rr=[];rrr=[];rrrr=[];rrrrr=[];r6=[];r7=[];
        r_2=[];rr_2=[];rrr_2=[];rrrr_2=[];rrrrr_2=[];r6_2=[];r7_2=[];
        r_3=[];rr_3=[];rrr_3=[];rrrr_3=[];rrrrr_3=[];r6_3=[];r7_3=[];
        for n=1:nf
            r=[r,disoobAVG{n,i}];
            
%            rrr=[rrr,disoobAVG3{n,i}];
            
 %           rrrrr=[rrrrr,disoobAVG5{n,i}];
            
          %  r6=[r6,disoobAVG6{n,i}];
          %   r7=[r7,disoobAVG7{n,i}];
            
        end
        sonAVG{1,i}=r;%her bir y icin foldlardan gelen agac sayisina gore tahminler
        
  %      sonAVGExt2{1,i}=rrr;%
        
  %      sonAVGExt4{1,i}=rrrrr;%
        
        % sonAVGExt6{1,i}=r6;%
        % sonAVGExt7{1,i}=r7;%
        
    end
end
if cattrg==1
    if ~isempty(disoobCAT)
        for i=1:size(disoobCAT,2)
            r=[];rr=[];rrr=[];rrrr=[];rrrrr=[];r6=[];r7=[];
            r_2=[];rr_2=[];rrr_2=[];rrrr_2=[];rrrrr_2=[];r6_2=[];r7_2=[];
            r_3=[];rr_3=[];rrr_3=[];rrrr_3=[];rrrrr_3=[];r6_3=[];r7_3=[];
            for n=1:nf
                r=[r,disoobCAT{n,i}];
                
                rrr=[rrr,disoobCAT3{n,i}];
                
                rrrrr=[rrrrr,disoobCAT5{n,i}];
                
                  % r6=[r6,disoobCAT6{n,i}];
                  % r7=[r7,disoobCAT7{n,i}];
                
            end
            sonCAT{1,i}=r;%her bir y icin foldlardan gelen agac sayisina gore tahminler
            
            sonCATExt2{1,i}=rrr;
            
            sonCATExt4{1,i}=rrrrr;
            
             %sonCATExt6{1,i}=r6;
            
             %sonCATExt7{1,i}=r7;
            
        end
    end
end
if isempty(oobAVG1)
    sonAVG=[];
    readyAVG=[];readyAVGExt=[];readyAVGExt2=[];readyAVGExt3=[];readyAVGExt4=[];readyAVGExt5=[];readyAVGExt6=[];
    readyAVG_2=[];readyAVGExt_2=[];readyAVGExt2_2=[];readyAVGExt3_2=[];readyAVGExt4_2=[];readyAVGExt5_2=[];readyAVGExt6_2=[];
    readyAVG_3=[];readyAVGExt_3=[];readyAVGExt2_3=[];readyAVGExt3_3=[];readyAVGExt4_3=[];readyAVGExt5_3=[];readyAVGExt6_3=[];
    
end
if ~isempty(sonAVG)
    readyAVG=[];readyAVGExt=[];readyAVGExt2=[];readyAVGExt3=[];readyAVGExt4=[];readyAVGExt5=[];readyAVGExt6=[];readyAVGExt7=[];
    readyAVG_2=[];readyAVGExt_2=[];readyAVGExt2_2=[];readyAVGExt3_2=[];readyAVGExt4_2=[];readyAVGExt5_2=[];readyAVGExt6_2=[];
    readyAVG_3=[];readyAVGExt_3=[];readyAVGExt2_3=[];readyAVGExt3_3=[];readyAVGExt4_3=[];readyAVGExt5_3=[];readyAVGExt6_3=[];
    for i=1:size(sonAVG,2)
        readyAVG=[readyAVG, mean(sonAVG{1,i},2)];%readyAVGS # of col=#of numeric target, # of rows=1 tree, 2 tree...n tree perf
        
%        readyAVGExt2=[readyAVGExt2, mean(sonAVGExt2{1,i},2)];%
        
 %       readyAVGExt4=[readyAVGExt4, mean(sonAVGExt4{1,i},2)];%
        
        % readyAVGExt6=[readyAVGExt6, mean(sonAVGExt6{1,i},2)];%
        
         %readyAVGExt7=[readyAVGExt7, mean(sonAVGExt7{1,i},2)];%
        
    end
end



if cattrg==1
    if ~isempty(sonCAT)
        readyCATS=[];readyCATExt=[];readyCATExt2=[];readyCATExt3=[];readyCATExt4=[];readyCATExt5=[];readyCATExt6=[]; readyCATExt7=[];
        readyCATS_2=[];readyCATExt_2=[];readyCATExt2_2=[];readyCATExt3_2=[];readyCATExt4_2=[];readyCATExt5_2=[];readyCATExt6_2=[];
        readyCATS_3=[];readyCATExt_3=[];readyCATExt2_3=[];readyCATExt3_3=[];readyCATExt4_3=[];readyCATExt5_3=[];readyCATExt6_3=[];
        for i=1:size(sonCAT,2)
            readyCATS=[readyCATS, mean(sonCAT{1,i},2)];
            
            readyCATExt2=[readyCATExt2, mean(sonCATExt2{1,i},2)];
            
            readyCATExt4=[readyCATExt4, mean(sonCATExt4{1,i},2)];
            
             % readyCATExt6=[readyCATExt6, mean(sonCATExt6{1,i},2)];
            
             %readyCATExt7=[readyCATExt7, mean(sonCATExt7{1,i},2)];
            
        end
    end
    
else
    readyCATS=[];
    readyCATExt=[];
    readyCATExt2=[];
    readyCATExt3=[];
    readyCATExt4=[];
    readyCATExt5=[];
    readyCATExt6=[];
    readyCATExt7=[];
    readyCATS_2=[];
    readyCATExt_2=[];
    readyCATExt2_2=[];
    readyCATExt3_2=[];
    readyCATExt4_2=[];
    readyCATExt5_2=[];
    readyCATExt6_2=[];
    readyCATS_3=[];
    readyCATExt_3=[];
    readyCATExt2_3=[];
    readyCATExt3_3=[];
    readyCATExt4_3=[];
    readyCATExt5_3=[];
    readyCATExt6_3=[];
    
end

