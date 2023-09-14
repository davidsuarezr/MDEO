###+++++++++ python rutine to get the anlytical neutrino eigenvalues +++++++++++++++++++++++++++++

import numpy as np
import pandas as pd

def MATRIXCHIDIAG(MDF,vS,YRC,YRD):    
    
    dcOut={}
    
    #Diagonalization of Mchi matrix by the bi-unitary transfortion V and U
    vevSM = 244.874425 #Warning
    MX0 = np.matrix( [[MDF,vevSM*YRD/np.sqrt(2.)],[0.0,vS*YRC/np.sqrt(2.)]])
    #squared eigenvalues e eigenvectors for the V MATRIX
    (MVdiag2,V)=np.linalg.eig(MX0*np.transpose(MX0))
    #squared eigenvalues e eigenvectors for the U MATRIX
    (MUdiag2,U)=np.linalg.eig(np.transpose(MX0)*MX0)
    
    if np.sqrt(np.abs(MVdiag2[0])) < np.sqrt(np.abs(MVdiag2[1])):
        
        M1=np.sqrt(np.abs(MVdiag2[0]))
        M2=np.sqrt(np.abs(MVdiag2[1]))
        V11=V[0,0]
        V12=V[0,1]
        V21=V[1,0]
        V22=V[1,1]
        U11=U[0,0]
        U12=U[0,1]
        U21=U[1,0]
        U22=U[1,1]
        
    else:
        
        M1=np.sqrt(np.abs(MVdiag2[1]))
        M2=np.sqrt(np.abs(MVdiag2[0]))
        V11=V[1,0]
        V12=V[1,1]
        V21=V[0,0]
        V22=V[0,1]
        U11=U[1,0]
        U12=U[1,1]
        U21=U[0,0]
        U22=U[0,1]
    
    dcOut['M1']= M1
    dcOut['M2']= M2  
    dcOut['V11']= V11 
    dcOut['V12']= V12 
    dcOut['V21']= V21 
    dcOut['V22']= V22 
    dcOut['U11']= U11 
    dcOut['U12']= U12 
    dcOut['U21']= U21 
    dcOut['U22']= U22 
            
    return dcOut

#Loop factor
def fk(ms,ml):
    fk = (1./(4.*np.pi)**2)*(ms**2*np.log(ms**2)-ml**2*np.log(ml**2))/(ms**2-ml**2)
    return fk   

#Compute the neutrino eigenvalues
def MATRIXDIAG(ZL11,ZL12,ZL21,ZL22,ZR11,ZR12,ZR21,ZR22,ZN11,ZN12,ZN21,ZN22,YnL11,YnL12,YnL13,YnL21,YnL22,YnL23,\
    YnR11,YnR12,YnR13,YnR21,YnR22,YnR23,mXi_1,mXi_2,mns_1,mns_2):    
    
    fk1 = mXi_1*(ZN11*fk(mns_1,mXi_1)*ZN21 + ZN12*fk(mns_2,mXi_1)*ZN22)
    fk2 = mXi_2*(ZN11*fk(mns_1,mXi_2)*ZN21 + ZN12*fk(mns_2,mXi_2)*ZN22)
    #print(fk1,fk2)

    fl1 = ZR11*ZL11*fk1 + ZR12*ZL12*fk2 #esto es l=1, suma k=1,2
    fl2 = ZR21*ZL21*fk1 + ZR22*ZL22*fk2
    #print(fl1,fl2)

    #Matrix elements
    M11 = YnL11*fl1*YnR11 + YnL21*fl2*YnR21 
    M12 = YnL11*fl1*YnR12 + YnL21*fl2*YnR22 
    M13 = YnL11*fl1*YnR13 + YnL21*fl2*YnR23
    M21 = YnL12*fl1*YnR11 + YnL22*fl2*YnR21 
    M22 = YnL12*fl1*YnR12 + YnL22*fl2*YnR22 
    M23 = YnL12*fl1*YnR13 + YnL22*fl2*YnR23
    M31 = YnL13*fl1*YnR11 + YnL23*fl2*YnR21 
    M32 = YnL13*fl1*YnR12 + YnL23*fl2*YnR22 
    M33 = YnL13*fl1*YnR13 + YnL23*fl2*YnR23


    Mvij = np.matrix( [[M11, M12, M13],
                       [M21, M22, M23],
                       [M31, M32, M33]] )

    #eigenvalues e eigenvectors
    (Mdiag2,V)=np.linalg.eig(Mvij*np.transpose(Mvij))
    
    #took eigenvalues
    MX1 = np.sqrt(np.abs(Mdiag2[0])) #*(1./np.sqrt(2.)) #WARNING
    MX2 = np.sqrt(np.abs(Mdiag2[1])) #*(1./np.sqrt(2.))
    MX3 = np.sqrt(np.abs(Mdiag2[2])) #*(1./np.sqrt(2.))
    
    ## reorganize the eigenvalues (neutrino masses)
    mn1 = 0.0
    mn2 = 0.0
    mn3 = 0.0

    if MX1 < MX2 and MX1 < MX3:
        mn1 = MX1
        #print "Hola1"

        if MX2 < MX3:
            mn2 = MX2
            mn3 = MX3
        else:
            mn2 = MX3
            mn3 = MX2  

    if MX2 < MX1 and MX2 < MX3:
        mn1 = MX2
        #print "Hola2" 

        if MX1 < MX3:
            mn2 = MX1
            mn3 = MX3
        else:
            mn2 = MX3
            mn3 = MX1   

    if MX3 < MX1 and MX3 < MX2:
        mn1 = MX3
        #print "Hola3"  

        if MX1 < MX2:
            mn2 = MX1
            mn3 = MX2
        else:
            mn2 = MX2
            mn3 = MX1
            
    #print(mn1, mn2,mn3)   

    return mn1, mn2, mn3

#run all dataframe
MatrixDiag_new=np.vectorize(MATRIXDIAG,excluded={'vev':246.2,'LAMBDA':1E16},doc='Input for pyfunc below:\
			    YB11,YB12,YB13,YB21,YB22,YB23,YA11,YA12,YA13,YA21,YA22,YA23,mS1,mS2,MDF,vS,YRC,YRD')
