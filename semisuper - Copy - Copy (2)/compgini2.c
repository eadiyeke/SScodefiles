#include "mex.h"


void compgini2(int *outmat, char *inp1, char *inp2,int numcat,int numcat2,size_t m1,size_t m2)
{
    
    mwSize i,j;
    int cntr;
    if(m1>1 && m2>1){
        for(i=0;i<numcat;i++){
            cntr=0;
            for(j=0;j<numcat2;j++){
                if(inp1[j]==inp2[i]){
                    cntr=cntr+1;
                }
            }
             outmat[i]=cntr;
        }
        
        
    }
   
}

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{ char *inp1,*inp2;
  size_t M1,M2,m1,m2;
  int *outmat;
  int status,status2,numcat,numcat2;
  m1=mxGetM(prhs[0])*sizeof(mxChar);
  m2=mxGetM(prhs[1])*sizeof(mxChar);
  M1=mxGetM(prhs[0])*sizeof(mxChar)+1;
  M2=mxGetM(prhs[1])*sizeof(mxChar)+1;
  inp1=mxMalloc(M1);
  inp2=mxMalloc(M2);
  status = mxGetString(prhs[0], inp1, (mwSize)M1);
  status2 = mxGetString(prhs[1], inp2, (mwSize)M2);
  numcat=mxGetScalar(prhs[2]);
  numcat2=mxGetScalar(prhs[3]);
  //countcats = mxGetPr(prhs[2]);
  plhs[0]=mxCreateDoubleMatrix(1,m2, mxREAL);
  outmat = mxGetPr(plhs[0]);
  mexPrintf("\nm2 %d .",m2);
  mexPrintf("\nm1 %d .", m1);
    mexPrintf("\nM1 %d .", M1);
      mexPrintf("\nM2 %d .", M2);
      mexPrintf("The input string is:  %s\n", inp1);
      mexPrintf("The input string is:  %s\n", inp2);
      
  compgini2(outmat,inp1,inp2,numcat,numcat2,m1,m2);
  mxFree(inp1);
  mxFree(inp2);
}