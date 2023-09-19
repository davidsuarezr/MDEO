###+++++++++ python rutine to get the anlytical neutrino eigenvalues +++++++++++++++++++++++++++++

import numpy as np
import pandas as pd
import NEUTRINO2018

## Fermion diagonalization
def MATFermionXi(YX11,YX12,YX21,YX22,vX):
    
    dcOut={}
    
    MF = (-vX/np.sqrt(2.))*np.matrix([[YX11,YX12],[YX21,YX22]])

    (MVdiag2,V)=np.linalg.eig(MF*np.transpose(MF))

    (MUdiag2,U)=np.linalg.eig(np.transpose(MF)*MF)
    
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

### Scalar diagonalization
def MATSalarS0(l3,l4,l7,l9,l10,vX,VEV,muC,MS2,Mn2):
    
    dcOut={}
    
    MS = np.matrix([[0.5*((l3+l4)*VEV**2 + l7*vX**2) + Mn2, -0.5*VEV*muC],[-0.5*VEV*muC, 0.5*(l10*vX**2+l9*VEV**2) + MS2]])

    (MVdiag2,V)=np.linalg.eig(MS)
    
    if np.abs(MVdiag2[0]) < np.abs(MVdiag2[1]):
        
        M1=np.sqrt(np.abs(MVdiag2[0]))
        M2=np.sqrt(np.abs(MVdiag2[1]))
        V11=V[0,0]
        V12=V[0,1]
        V21=V[1,0]
        V22=V[1,1]
        
    else:
        
        M1=np.sqrt(np.abs(MVdiag2[1]))
        M2=np.sqrt(np.abs(MVdiag2[0]))
        V11=V[1,0]
        V12=V[1,1]
        V21=V[0,0]
        V22=V[0,1]
    
    dcOut['M1']= M1
    dcOut['M2']= M2  
    dcOut['V11']= V11 
    dcOut['V12']= V12 
    dcOut['V21']= V21 
    dcOut['V22']= V22 
            
    return dcOut

##### Loop factor
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

#PMNS matrix 2018 to 3\sigma https://arxiv.org/abs/1708.01186
def nuexpvalues():   

    dcOut={}
    #phases of the PMNS matrix and the R 
    phases1 = np.random.uniform(0.,0.0*np.pi,3) # WARNING! They are in zero
    delta = phases1[0]
    eta1 = phases1[1]
    eta2 = phases1[2]

    #light neutrino masses (up 3 sigma range) NH (NO)
    #mnu1 = 10**((np.log10(2.5e-3)-np.log10(1e-9))*np.random.uniform(0,1)+np.log10(1e-9))*1e-9 
    #Zero in this framework
    mnu1 = 1.0e-25
    mnu2 = np.sqrt(np.random.uniform(7.05e-5,8.14e-5)*1.0e-18+mnu1**2)
    mnu3 = np.sqrt(np.random.uniform(2.41e-3,2.60e-3)*1.0e-18+mnu1**2)

    #mixing angles (up 3 sigma range) NH
    t12 = np.arcsin(np.sqrt(np.random.uniform(0.273,0.379)))
    t23 = np.arcsin(np.sqrt(np.random.uniform(0.445,0.599)))
    t13 = np.arcsin(np.sqrt(np.random.uniform(0.0196,0.0241)))

    #Building PMNS matrix NH
    UM12 = np.array([ [np.cos(t12),np.sin(t12),0.], [-np.sin(t12),np.cos(t12),0.], [0.,0.,1.0] ])
    UM13 = np.array([ [np.cos(t13),0.,np.sin(t13)], [0.,1.0,0.], [-np.sin(t13),0.,np.cos(t13)] ])
    UM23 = np.array([ [1.0,0.,0.], [0.,np.cos(t23),np.sin(t23)], [0.,-np.sin(t23),np.cos(t23)] ])
    Uphases = np.array([ [np.exp(eta1*1j),0.,0.], [0.,np.exp(eta2*1j),0.], [0.,0.,1.0] ])
    U=np.dot(UM23,np.dot(UM13,np.dot(UM12,Uphases)))

    #Defining the U elementes.

    dcOut['mnu1']= mnu1
    dcOut['mnu2']= mnu2
    dcOut['mnu3']= mnu3
    dcOut['U11']= np.real(U[0,0])
    dcOut['U12']= np.real(U[0,1])
    dcOut['U13']= np.real(U[0,2])
    dcOut['U21']= np.real(U[1,0])
    dcOut['U22']= np.real(U[1,1])
    dcOut['U23']= np.real(U[1,2])
    dcOut['U31']= np.real(U[2,0])
    dcOut['U32']= np.real(U[2,1])
    dcOut['U33']= np.real(U[2,2])

    return dcOut

#Yukawas inversion to neutrino masses:
def Yukawas(PMNS,FMa,SMa):
    
    dcOut={}
    
    #Taking the PMNS values...
    mnu1 = PMNS['mnu1']
    mnu2 = PMNS['mnu2']
    mnu3 = PMNS['mnu3']
    U11 = PMNS['U11']
    U12 = PMNS['U12']
    U13 = PMNS['U13']
    U21 = PMNS['U21']
    U22 = PMNS['U22']
    U23 = PMNS['U23']
    U31 = PMNS['U31']
    U32 = PMNS['U32']
    U33 = PMNS['U33']

    #L1= 1E-7
    #L2=1E-8
    
    #NEUTRINO ALGORITHM INVERSION
    #ZL and ZR:(FERMION ROTATION)
    ZL11 = FMa['V11']
    ZL12 = FMa['V12']
    ZL21 = FMa['V21']
    ZL22 = FMa['V22']
    ZR11 = FMa['U11']
    ZR12 = FMa['U12']
    ZR21 = FMa['U21']
    ZR22 = FMa['U22']
    mXi_1 = FMa['M1']
    mXi_2 = FMa['M2']
    # ZN: (SCALAR ROTATION)
    ZN11 = SMa['V11']
    ZN12 = SMa['V12']
    ZN21 = SMa['V21']
    ZN22 = SMa['V22']
    mns_1 = SMa['M1']
    mns_2 = SMa['M2']
    
    fk1 = mXi_1*(ZN11*fk(mns_1,mXi_1)*ZN21 + ZN12*fk(mns_2,mXi_1)*ZN22)
    fk2 = mXi_2*(ZN11*fk(mns_1,mXi_2)*ZN21 + ZN12*fk(mns_2,mXi_2)*ZN22)

    L1 = ZR11*ZL11*fk1 + ZR12*ZL12*fk2 #esto es l=1, suma k=1,2
    L2 = ZR21*ZL21*fk1 + ZR22*ZL22*fk2
    
    a11 = 0.
    a12 = 0.  
    a21 = np.exp(np.random.uniform(np.log(1.*10**(-4)),np.log(10**(0))))
    a22 = np.exp(np.random.uniform(np.log(1.*10**(-4)),np.log(10**(0))))
    a31 = np.exp(np.random.uniform(np.log(1.*10**(-4)),np.log(10**(0))))    
    a32 = np.exp(np.random.uniform(np.log(1.*10**(-4)),np.log(10**(0))))
    #bij->YnRij Solve in Mathematica
    b11 = -((a32*mnu2*U12 - a22*mnu3*U13)/(a22*a31*L1 - a21*a32*L1))   
    b21 = -((a32*mnu2*U22 - a22*mnu3*U23)/(a22*a31*L1 - a21*a32*L1))
    b31 = -((a32*mnu2*U32 - a22*mnu3*U33)/(a22*a31*L1 - a21*a32*L1))
    b12 = (a31*mnu2*U12 - a21*mnu3*U13)/(a22*a31*L2 - a21*a32*L2)
    b22 = (a31*mnu2*U22 - a21*mnu3*U23)/(a22*a31*L2 - a21*a32*L2)
    b32 = (a31*mnu2*U32 - a21*mnu3*U33)/(a22*a31*L2 - a21*a32*L2)
    
    dcOut['YnL11']=a11
    dcOut['YnL12']=a21
    dcOut['YnL13']=a31
    dcOut['YnL21']=a12
    dcOut['YnL22']=a22
    dcOut['YnL23']=a32
    
    dcOut['YnR11']=b11
    dcOut['YnR12']=b21
    dcOut['YnR13']=b31
    dcOut['YnR21']=b12
    dcOut['YnR22']=b22
    dcOut['YnR23']=b32
    
    dcOut['ZL11']=FMa['V11']
    dcOut['ZL12']=FMa['V12']
    dcOut['ZL21']=FMa['V21']
    dcOut['ZL22']=FMa['V22']    
    dcOut['ZR11']=FMa['U11']
    dcOut['ZR12']=FMa['U12']
    dcOut['ZR21']=FMa['U21']
    dcOut['ZR22']=FMa['U22']
    dcOut['mXi_1'] = FMa['M1']
    dcOut['mXi_2'] = FMa['M2']
    
    dcOut['ZN11'] = SMa['V11']
    dcOut['ZN12'] = SMa['V12']
    dcOut['ZN21'] = SMa['V21']
    dcOut['ZN22'] = SMa['V22']
    dcOut['mns_1'] = SMa['M1']
    dcOut['mns_2'] = SMa['M2'] 
    
    #Return PMNS
    dcOut['mnu1'] = mnu1
    dcOut['mnu2'] = mnu2
    dcOut['mnu3'] = mnu3
    
    return dcOut
