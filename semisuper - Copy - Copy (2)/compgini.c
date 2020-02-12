#include "mex.h"

void compgini(double *outgini, char *inp1, char *inp2, double numelunq,int *countcats, size_t M1, size_t M2,size_t m1,size_t m2)
{
    mwSize m,i,j;
    int mm1=(int)m1;
    double probsum=0.0;
    if(m1>1 && m2>1){
        for(i=0;i<m1;i++){
            for(j=0;j<m2;j++){
                if(inp1[i]==inp2[j]){
                    countcats[j]=countcats[j]+1;
                }
            }
        }
        for(m=0;m<m2;m++){
            countcats[m]=countcats[m]/mm1;
            probsum=probsum+(countcats[m]*countcats[m]);
        }
        outgini[0]=1.0-probsum;
        
        
    }
    else{
        outgini[0]=0.0;
    }
    
    
}

void mexFunction(int nlhs, mxArray *plhs[],
        int nrhs, const mxArray *prhs[])
{ char *inp1,*inp2;
  size_t M1,M2,m1,m2;
  double *outgini,numelunq;
  int *countcats,status,status2;
  m1=mxGetM(prhs[0])*sizeof(mxChar);
  m2=mxGetM(prhs[1])*sizeof(mxChar);
  M1=mxGetM(prhs[0])*sizeof(mxChar)+1;
  M2=mxGetM(prhs[1])*sizeof(mxChar)+1;
  status = mxGetString(prhs[0], inp1, (mwSize)M1);
  status2 = mxGetString(prhs[1], inp2, (mwSize)M2);
  numelunq=mxGetScalar(prhs[2]);
  countcats = mxGetPr(prhs[3]);
  plhs[0]=mxCreateDoubleMatrix(1,1, mxREAL);
  outgini = mxGetPr(plhs[0]);
  compgini(outgini,inp1,inp2,numelunq,countcats,M1,M2,m1,m2);
}