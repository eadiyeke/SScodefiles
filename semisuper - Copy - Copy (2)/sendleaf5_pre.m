function [y1_avg, y2_type]=sendleaf5_pre(tree, newinstance,x,y,x_eval,y_eval,allleavesy,mymed)
%neighbors=allleaves{2:end};
%mymed=tree.mymed;
%labs=allleavesy{1,2:end};
 x_eval1=x_eval;
 %x_eval=[x_eval1 y_eval];%extended version. if you do not want to work with extended version simply delete row 4 and row5
 %if tree.split<=size(x_eval1,2)
     if x_eval(tree.split)%is it numeric
         if newinstance(1,tree.split)<=tree.thr
             next=tree.lchild;
         else
             next=tree.rchild;
         end
     else
         groups2=unique(x(:,tree.split));%output is column matrix
         if newinstance(1,tree.split)==groups2(tree.thr,1);%%burada groups2{} þeklinde idi duzelttim
             next=tree.rchild;
         else
             next=tree.lchild;
         end
     end
% end
if ~next.terminal
    if isempty(next.labeled)
%         d=next.medoid;
%         for pp=1:size(mymed,1)
%             mysimmat(1,pp)=exp(-0.5*(sum((d-mymed(pp,:)).^2)));
%         end
%         [M,I]=max(mysimmat);
        y1_avg.avg=tree.avg;%allleavesy{1,I+1};
        y2_type.type=tree.category;%next.category; 
    else
        y1_avg.avg=next.avg;
   y2_type.type=next.category; 
    end
else
    [y1_avg,y2_type]=sendleaf5_pre(next, newinstance, x,y,x_eval,y_eval,allleavesy,mymed);
end
end