function [forest,usedsamps,testsamples,usedsampleslog,comb,allleaves,unl,allleavesy,allunlabeled,mymed]=dtforest3(x_eval,y_eval,ntree,sampfactor,x,y,maxleafsize,maxdepth,prf,tarpref,xlab,ylab)
forest=cell(ntree,1);
nseries=size(x,1);
nseries2=size(xlab,1);
d=1:nseries;
dd=1:nseries2;
usedsamps=[];
testsamples=[];
usedsampleslog=[];
%y_eval=cellfun(@isnumeric, y);
%x_eval=cellfun(@isnumeric, x);
% for i=1:size(y_eval,2)
%     if y_eval(1,i)==0%do we have categorical target?
%         y{i}=nominal(y{i});%replace strings with nominal versions
%         %Y{i}=char(Y{i});
%     end
% end
%profile on
for itree=1:ntree
    % tic
      comb={1};comu={1};comby={1};combtr={1};
    depth=0;
    pnode=0;
    pnodep=1;
    use=randsample(nseries, floor(sampfactor*nseries));
    use2=randsample(nseries2, floor(0.7*nseries2));
    testsamples=[testsamples, setdiff(d',use)];
    usedsamps=[usedsamps, use];
    us=ismember(d,use);
    usedsampleslog=[usedsampleslog, us'];
    xx=x(use,:);
    yy=y(use,:);
    myxlab=xlab(use2,:);
    myylab=ylab(use2,:);
%     for i=1:size(x_eval,2)
%         if x_eval(1,i)==0%do we have categorical input?
%             xx{i}=nominal(xx{i});%replace strings with nominal versions
%         end
%     end
%profile on
allxx=[xx;myxlab];
for r=1:size(allxx,1)
    for rr=1:size(allxx,1)
        dist=allxx(r,:)-allxx(rr,:);
        dist2=dist.^2;
        distmat(r,rr)=sqrt(sum(dist2));
    end
end
tcost=sum(distmat,2);
    [ att ,val,pnode,pnodep, tree,comb,comu,comby,combtr]=findsplitdeneme16(x_eval,y_eval,xx,yy,pnode,pnodep,maxleafsize,maxdepth,depth,prf,tarpref,myxlab,myylab,comb,comu,comby,combtr,tcost,distmat);
    %disp(itree)
 %profile off  
med=[];
for g=2:size(comu,2)
    %[idx,C] =kmedoids(comu{1,g},1);
    mycomu=comu{1,g};distances=[];
    distances=mymedoid(mycomu);
    ddist=sum(distances,2);
   [z,zz]=min(ddist);
   C=mycomu(zz,:);
    med=[med;C];
end
mymed=[];
for g=2:size(comb,2)
    %[idx,CC] =kmedoids(comb{1,g},1);
    mycmb=comb{1,g};distances=[];ddist=[];
    distances=mymedoid(mycmb);
    ddistt=sum(distances,2);
    [zw,zww]=min(ddistt);
    CC=mycmb(zww,:);
    mymed=[mymed;CC];
end

%for p=1:size(med,1)
   % for pp=1:size(mymed,1)
    %    simmat(p,pp)=exp(-0.5*(sum((med(p,:)-mymed(pp,:)).^2)));
  %  end
%end
tree.mymed=mymed;
%tree.simm=simmat;
    forest{itree}=tree;
    allleaves{itree}=comb;
    unl{itree}=comu;
    allleavesy{itree}=comby;
    allunlabeled{itree}=combtr;
    % toc
end
%toc
%profile off
%toc
end
