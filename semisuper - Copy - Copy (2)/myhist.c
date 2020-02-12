#include <stdio.h>
#include <string.h>
#include <matrix.h>
#include "mex.h"

/*nominal gonderme, sort ederek gonder, charify et:/*/
void myhist(double *cats,double *numcats,double *numgr, char *inp1, int len)
{
            
    mwSize i,j=0;
    /*for(i=0;i<25;i++){
        numcats[i]=0;
        cats[i]=0;
    }*/
    for(i=0;i<(len-1);i++){
        //numcats[j]=1;
        if(inp1[i]==inp1[i+1]){
            numcats[j]=numcats[j]+1.0;//counts each group
        }
        else{
            //cats[j]=i+cats[j];
            j=j+1;
            
        }
        
    }

     for(i=0;i<(j+1);i++){
        //numcats[j]=1;
         
       // if(numcats[i]>0){
            numcats[i]=numcats[i]+1.0;
            if(i==0){
            cats[i]=numcats[i];}
            else{
            cats[i]=numcats[i]+cats[i-1]; //returns the indices
            }
           
      //  }
       
        
    }
    
    numgr[0]=j+1;//returns number of cats
    
   /* for(i=0;i<(j+1);i++){
        if(cats[i]==0){
            cats[i]=1;
            numcats[i]=1;
        }
    }
    
    if(numcats[i]>0){
            if(i==0){
            cats[i]=numcats[i];}
            else{
            cats[i]=numcats[i]+cats[i-1]; //returns the indices
            }
           
        }*/
    
}

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{ char *inp1;
  double *cats;
  //size_t M1,M2,m1,m2;
  double *numcats;
  int len;
  double *numgr;
  inp1=mxArrayToString(prhs[0]);
  len=strlen(inp1);
   plhs[0] = mxCreateDoubleMatrix(1,25, mxREAL);
  cats=mxGetPr(plhs[0]);
  plhs[2] = mxCreateDoubleMatrix(1,1, mxREAL);
  numgr=mxGetPr(plhs[2]);
  //cats = mxGetChars(plhs[0]);
  plhs[1]=mxCreateDoubleMatrix(1,25, mxREAL);
  numcats = mxGetPr(plhs[1]);
  /*mexPrintf("%d\n",strlen(inp1));
   * mexPrintf("The input string is:  %s\n", inp1);
   * mexPrintf("The input string is:  %s\n", inp2);*/
  
  myhist(cats,numcats,numgr,inp1,len);
  //mxFree(inp1);
}