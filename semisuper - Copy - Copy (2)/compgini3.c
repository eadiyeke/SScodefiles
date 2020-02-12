#include <stdio.h>
#include <string.h>
#include "mex.h"


void compgini3(double *outmat, char *inp1, char *inp2,int numcat,int numcat2)
{
    
    mwSize i,j;
   int cntr;
    if(numcat>1 && numcat2>1){
        for(i=0;i<numcat;i++){
            cntr=0;
            for(j=0;j<numcat2;j++){
                if(inp1[j]==inp2[i]){
                    cntr=cntr+1;
                }
            }
            printf("%d\n",cntr);
            outmat[i]=cntr;
        }
        
        
    }
    
}

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{ char *inp1,*inp2;
  //size_t M1,M2,m1,m2;
  double *outmat;
  int status,status2,numcat,numcat2;
  /*m1=mxGetM(prhs[0])*sizeof(mxChar);
   * m2=mxGetM(prhs[1])*sizeof(mxChar);
   * M1=mxGetM(prhs[0])*sizeof(mxChar)+1;
   * M2=mxGetM(prhs[1])*sizeof(mxChar)+1;
   * inp1=mxMalloc(M1);
   * inp2=mxMalloc(M2);
   * status = mxGetString(prhs[0], inp1, (mwSize)M1);
   * status2 = mxGetString(prhs[1], inp2, (mwSize)M2);*/
  inp1=mxArrayToString(prhs[0]);
  inp2=mxArrayToString(prhs[1]);
  numcat=strlen(inp2);
  numcat2=strlen(inp1);
  //countcats = mxGetPr(prhs[2]);
  plhs[0]=mxCreateDoubleMatrix(1,strlen(inp2), mxREAL);
  outmat = mxGetPr(plhs[0]);
  mexPrintf("%d\n",strlen(inp1));
  mexPrintf("The input string is:  %s\n", inp1);
  mexPrintf("The input string is:  %s\n", inp2);
  
  compgini3(outmat,inp1,inp2,numcat,numcat2);
  mxFree(inp1);
  mxFree(inp2);
}