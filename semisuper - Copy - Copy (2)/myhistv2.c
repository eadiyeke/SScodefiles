#include <stdio.h>
#include <string.h>
#include <matrix.h>
#include "mex.h"

/*nominal gonderme, charify et:/*/
void myhistv2(double *transcats, char *inp1,char *inp2, int len,int len2)
{
            
    mwSize i=0;
    mwSize j=0;
    /*for(i=0;i<25;i++){
        numcats[i]=0;
        cats[i]=0;
    }*/
    for (i=0;i<len2;i++){
    for (j=0;j<len;j++){
    if(inp1[j]==inp2[i]){
    transcats[j]=i;
    }
    }
    }
    
}

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{ char *inp1,*inp2;
  double *transcats;
  //size_t M1,M2,m1,m2;
  //double *numcats;
  int len,len2;
  //double *numgr;
  inp1=mxArrayToString(prhs[0]);
  len=strlen(inp1);
  inp2=mxArrayToString(prhs[1]);
  len2=strlen(inp2);
  //inp3=mxGetScalar(prhs[2]);
   plhs[0] = mxCreateDoubleMatrix(1,(mwSize)len, mxREAL);
  transcats=mxGetPr(plhs[0]);
  //plhs[2] = mxCreateDoubleMatrix(1,1, mxREAL);
  //numgr=mxGetPr(plhs[2]);
  //cats = mxGetChars(plhs[0]);
 // plhs[1]=mxCreateDoubleMatrix(1,25, mxREAL);
  //numcats = mxGetPr(plhs[1]);
  /*mexPrintf("%d\n",strlen(inp1));
   * mexPrintf("The input string is:  %s\n", inp1);
   * mexPrintf("The input string is:  %s\n", inp2);*/
  
  myhistv2(transcats,inp1,inp2,len,len2);
  //mxFree(inp1);
}