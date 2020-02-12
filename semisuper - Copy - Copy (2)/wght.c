#include "mex.h"

void wght(double *outmat, double *dab, double *dbel, size_t M)
{
    mwSize m;
 
    double arsum=0.0,arsum2=0.0;
    
   
    for(m=0;m<M;m++){
        arsum+=dab[m];
    }
    
    for(m=0;m<M;m++){
        arsum2+=dbel[m];
    }
    
    outmat[0]=arsum/(arsum+arsum2);
    
    
}

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{ double *dab,*dbel,*outmat;
  size_t M;
  //size_t nobj;
  M=mxGetM(prhs[0]);
  dab=mxGetPr(prhs[0]);
  dbel=mxGetPr(prhs[1]);
  //N=mxGetN(prhs[0]);
  plhs[0]=mxCreateDoubleMatrix( 1, 1, mxREAL);
  //plhs[1]=mxCreateDoubleMatrix( mwSize(M), 1, mxREAL);
  outmat = mxGetPr(plhs[0]);
  /*call the routine*/
  wght(outmat,dab,dbel,M);
  
  
  
  /* code here */
}