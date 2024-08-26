#!/usr/bin/env python

import pyslha
import numpy as np
import pandas as pd
import subprocess
import time
import sys

import pyMDEO_LesHouches_generator
import neutrino_analytic
import NEUTRINO2018

# Tiempo inicial
t1=time.time() 

x=[]

#Num is the times to run the program. Entry using the keyboard
Num = int(sys.argv[1])

for i in range(0,Num):
    print(i)
    #Open the dicctionary
    xdict = pyMDEO_LesHouches_generator.buildSLHAinFile()

    #Random parameters
    MZ = 91.1876
    g1=3.55690247E-01
    #g1p = 1.05E-2 #U1 coupling
    epsilon = 0
    g1p1 = 0.
    g11p = -g1*epsilon
    #MZp = 5.0 
    MZp = np.exp(np.random.uniform(np.log(1e1),np.log(9.1e1))) 
    print(MZp)
    #vX = MZp*(1.+epsilon**2)/(9.0*g1p)  #da 10 GeV
    vX = 500.0
    VEV = 246.220569
    g1p = MZp/(9*vX)
    #print('MZp=',MZp,g1p)
    
    theta = 1E-4
    gamma = 1.0/np.sqrt(1.0+np.tan(2.0*theta)**2.0)
    
    mh1=125.1
    mh2= 200.0 #np.exp(np.random.uniform(np.log(10.),np.log(mh1))) #WARNING
    Lam1=(0.5/VEV**2.0)*(mh1**2.0+mh2**2.0-gamma*(mh2**2.0-mh1**2.0)) 
    #Lam1 = 0.0143
    
    Lam2 = 0 #conj[Et].Et.conj[Et].Et
    Lam3 = 0 #conj[H].H.conj[Et].Et
    Lam4 = 0 #conj[H].Et.conj[Et].H
    Lam5 = (0.5/vX**2.0)*(mh1**2.0+mh2**2.0+gamma*(mh2**2.0-mh1**2.0)) ##conj[bi].bi.conj[bi].bi
    Lam6 = 0.0 ##conj[bi].bi.conj[H].H
    
    # Perturbativity
    if Lam5 > np.sqrt(4.*np.pi) or Lam6 > np.sqrt(4.*np.pi):
        continue    
    
    Lam7 = 0 #conj[bi].bi.conj[Et].Et
    Lam8 = 0 ##conj[S].S.conj[S].S
    Lam9 = 0 #conj[S].S.conj[H].H
    Lam10 =0 #conj[S].S.conj[bi].bi
    Lam11 = 0 ##conj[S].S.conj[Et].Et
    MS2 = 1.0E10 #conj[S].S
    Mn2 = 1.0E8 #mEt2 conj[Et].Et
    #Yc = 0.255 # Yc bi.CL.CR #70
    #Yc = 0.226 # Yc bi.CL.CR # 80
    #Yc = 0.240 # Yc bi.CL.CR # 85
    Yc = 0.2433 # Yc bi.CL.CR # 86
    #Yc = 0.2456 # Yc bi.CL.CR # 87
    #Yc = 0.2487 # Yc bi.CL.CR # 88
    muC = 11E-10 #muC conj[H].Et.conj[S]

    xdict.blocks['MINPAR'].entries[1]='%.6E    # lambda1Input'%Lam1
    xdict.blocks['MINPAR'].entries[2]='%.6E    # lambda2Input'%Lam2
    xdict.blocks['MINPAR'].entries[3]='%.6E    # lambda3Input'%Lam3
    xdict.blocks['MINPAR'].entries[4]='%.6E    # lambda4Input'%Lam4
    xdict.blocks['MINPAR'].entries[5]='%.6E    # lambda5Input'%Lam5
    xdict.blocks['MINPAR'].entries[6]='%.6E    # lambda6Input'%Lam6
    xdict.blocks['MINPAR'].entries[7]='%.6E    # lambda7Input'%Lam7
    xdict.blocks['MINPAR'].entries[8]='%.6E    # lambda8Input'%Lam8
    xdict.blocks['MINPAR'].entries[9]='%.6E    # lambda9Input'%Lam9
    xdict.blocks['MINPAR'].entries[10]='%.6E    # lambda10Input'%Lam10
    xdict.blocks['MINPAR'].entries[11]='%.6E    # lambda11Input'%Lam11
    xdict.blocks['MINPAR'].entries[20]='%.6E    # g1pINPUT'%g1p
    xdict.blocks['MINPAR'].entries[21]='%.6E    # g1p1INPUT'%g1p1
    xdict.blocks['MINPAR'].entries[22]='%.6E    # g11pINPUT'%g11p
    xdict.blocks['MINPAR'].entries[23]='%.6E    # mEt2Input'%Mn2
    xdict.blocks['MINPAR'].entries[24]='%.6E    # MS2Input'%MS2
    xdict.blocks['MINPAR'].entries[30]='%.6E    # vXinput'%vX
    xdict.blocks['MINPAR'].entries[31]='%.6E    # Ycinput'%Yc
    xdict.blocks['MINPAR'].entries[32]='%.6E    # muCinput'%muC
    
    mChi = Yc*vX/np.sqrt(2.)
        
    MX1 = 500.
    MX2 = 750.
    thetaf = 0
    gammaf = 1.0/np.sqrt(1.0+np.tan(2.0*thetaf)**2.0)
    YX11 = np.sqrt(2.0)/vX*0.5*(MX1+MX2-gammaf*(MX2-MX1)) #Yx bi.FxL.FxR
    YX22 = np.sqrt(2.0)/vX*0.5*(MX1+MX2+gammaf*(MX2-MX1))
    YX12 = np.sqrt(2.0)/vX*0.5*gammaf*(MX2-MX1)*np.tan(2.0*thetaf)
    YX21 = YX12
    
    xdict.blocks['YXIN'].entries[1,1]='%.6E    # YX(1,1)'%YX11
    xdict.blocks['YXIN'].entries[1,2]='%.6E    # YX(1,2)'%YX12
    xdict.blocks['YXIN'].entries[2,1]='%.6E    # YX(2,1)'%YX21
    xdict.blocks['YXIN'].entries[2,2]='%.6E    # YX(2,2)'%YX22

    #Rotation matrices and Yukawas after inversion
    FMa = neutrino_analytic.MATFermionXi(YX11,YX12,YX21,YX22,vX)
    SMa = neutrino_analytic.MATSalarS0(Lam3,Lam4,Lam7,Lam9,Lam10,vX,VEV,muC,MS2,Mn2)
    YUKS = neutrino_analytic.Yukawas(NEUTRINO2018.nuexpvalues(),FMa,SMa)

    YnL11 = YUKS['YnL11']
    YnL12 = YUKS['YnL12']
    YnL13 = YUKS['YnL13']
    YnL21 = YUKS['YnL21']
    YnL22 = YUKS['YnL22']
    YnL23 = YUKS['YnL23']
    YnR11 = YUKS['YnR11']
    YnR12 = YUKS['YnR12']
    YnR13 = YUKS['YnR13']
    YnR21 = YUKS['YnR21']
    YnR22 = YUKS['YnR22']
    YnR23 = YUKS['YnR23']

    ZL11 = YUKS['ZL11']
    ZL12 = YUKS['ZL12']
    ZL21 = YUKS['ZL21']
    ZL22 = YUKS['ZL22']
    ZR11 = YUKS['ZR11']
    ZR12 = YUKS['ZR12']
    ZR21 = YUKS['ZR21']
    ZR22 = YUKS['ZR22']
    mXi_1 = YUKS['mXi_1']
    mXi_2 = YUKS['mXi_2']

    ZN11 = YUKS['ZN11']
    ZN12 = YUKS['ZN12']
    ZN21 = YUKS['ZN21']
    ZN22 = YUKS['ZN22']
    mns_1 = YUKS['mns_1']
    mns_2 = YUKS['mns_2']
    
    #No scalar DM
    if mns_1 < mChi or mns_1 < mXi_1:
        continue

    ##hdij->YnLij
    xdict.blocks['YNLIN'].entries[1,1]='%.6E    # YnL(1,1)'%YnL11
    xdict.blocks['YNLIN'].entries[1,2]='%.6E    # YnL(1,2)'%YnL12
    xdict.blocks['YNLIN'].entries[1,3]='%.6E    # YnL(1,3)'%YnL13
    xdict.blocks['YNLIN'].entries[2,1]='%.6E    # YnL(2,1)'%YnL21
    xdict.blocks['YNLIN'].entries[2,2]='%.6E    # YnL(2,2)'%YnL22
    xdict.blocks['YNLIN'].entries[2,3]='%.6E    # YnL(2,3)'%YnL23
    ##heij->YnRij
    xdict.blocks['YNRIN'].entries[1,1]='%.6E    # YnR(1,1)'%YnR11
    xdict.blocks['YNRIN'].entries[1,2]='%.6E    # YnR(1,2)'%YnR12
    xdict.blocks['YNRIN'].entries[1,3]='%.6E    # YnR(1,3)'%YnR13
    xdict.blocks['YNRIN'].entries[2,1]='%.6E    # YnR(2,1)'%YnR21
    xdict.blocks['YNRIN'].entries[2,2]='%.6E    # YnR(2,2)'%YnR22
    xdict.blocks['YNRIN'].entries[2,3]='%.6E    # YnR(2,3)'%YnR23

    #Write the Leshouches file
    if MZp < MZ:
        pyslha.writeSLHAFile('LesHouches.in.MDEOlight_low',xdict)
    else:
        pyslha.writeSLHAFile('LesHouches.in.MDEO_low',xdict)
    
    if MZp < MZ:
        
        #run SPheno
        spheno = subprocess.getoutput('../.././SPheno-4.0.5/bin/SPhenoMDEOlight LesHouches.in.MDEOlight_low')
        so = subprocess.getoutput('cat SPheno.spc.MDEOlight')
        
        #run micromegas.
        mo = subprocess.getoutput('~/Work/micromegas_6.0.3/MDEOlight/./CalcOmega_conversion')
        if mo.split('Omega_1h^2=')[1].split()[0] == 'NAN' or eval(mo.split('Omega_1h^2=')[1].split()[0]) <0:
            continue
        if mo.split('Omega_2h^2=')[1].split()[0] == 'NAN' or eval(mo.split('Omega_2h^2=')[1].split()[0]) <0:
            continue  
            
        Omega1 = eval(mo.split('Omega_1h^2=')[1].split()[0])
        Omega2 = eval(mo.split('Omega_2h^2=')[1].split()[0])
    
        #if Omega1+Omega2 > 0.132 or Omega1+Omega2 < 0.108: #~10 sigma
        #    continue        
        
        sv1122 = mo.split('Sigmav1122=')[1].split()[0]
        sv1100 = mo.split('Sigmav1100=')[1].split()[0]
        sv2211 = mo.split('Sigmav2211=')[1].split()[0]
        sv2200 = mo.split('Sigmav2200=')[1].split()[0]
        
        if sv1122 == 'NAN' or sv1100 == 'NAN':
            continue
        else:
            sv1122 = eval(mo.split('Sigmav1122=')[1].split()[0])
            sv1100 = eval(mo.split('Sigmav1100=')[1].split()[0])
        
        if sv2211 == 'NAN' or sv2200 == 'NAN':
            continue
        else:
            sv2211 = eval(mo.split('Sigmav2211=')[1].split()[0])
            sv2200 = eval(mo.split('Sigmav2200=')[1].split()[0])

        mo = subprocess.getoutput('~/Work/micromegas_6.0.3/MDEOlight/./CalcOmega_with_DI_Detection')
        
    
    else:
        #run SPheno
        spheno = subprocess.getoutput('../.././SPheno-4.0.5/bin/SPhenoMDEO LesHouches.in.MDEO_low')
        so = subprocess.getoutput('cat SPheno.spc.MDEO')
        
        #run micromegas.
        mo = subprocess.getoutput('~/Work/micromegas_6.0.3/MDEO/./CalcOmega_conversion')
        if mo.split('Omega_1h^2=')[1].split()[0] == 'NAN' or eval(mo.split('Omega_1h^2=')[1].split()[0]) <0:
            continue
        if mo.split('Omega_2h^2=')[1].split()[0] == 'NAN' or eval(mo.split('Omega_2h^2=')[1].split()[0]) <0:
            continue    
            
        Omega1 = eval(mo.split('Omega_1h^2=')[1].split()[0])
        Omega2 = eval(mo.split('Omega_2h^2=')[1].split()[0]) 
    
        #if Omega1+Omega2 > 0.132 or Omega1+Omega2 < 0.108:
        #    continue   
   
        sv1122 = eval(mo.split('Sigmav1122=')[1].split()[0])
        sv1100 = eval(mo.split('Sigmav1100=')[1].split()[0])
        sv2211 = eval(mo.split('Sigmav2211=')[1].split()[0])
        sv2200 = eval(mo.split('Sigmav2200=')[1].split()[0])    
        
        mo = subprocess.getoutput('~/Work/micromegas_6.0.3/MDEO/./CalcOmega_with_DI_Detection')
    
    T = eval(so.split('Block SPhenoLowEnergy #')[1].split()[4])
    S = eval(so.split('Block SPhenoLowEnergy #')[1].split()[10])
    U = eval(so.split('Block SPhenoLowEnergy #')[1].split()[16])
    g2mu = eval(so.split('Block SPhenoLowEnergy #')[1].split()[26])
    TWpSPheno = eval(so.split('Block ANGLES Q')[1].split()[6])
    MZpSPheno = eval(so.split('# VWm')[1].split()[1])

    if len(mo.split()) <= 4: #==2 relic ensity segmentation fault, ==4 when Indirect dtetection crash
        continue     
    
    SIN1= eval(mo.split('CDM1-nucleon cross sections[pb]:')[1].split()[7])
    SIN2= eval(mo.split('CDM2-nucleon cross sections[pb]:')[1].split()[7])
    SDN1= eval(mo.split('CDM1-nucleon cross sections[pb]:')[1].split()[9])
    SDN2= eval(mo.split('CDM2-nucleon cross sections[pb]:')[1].split()[9])
    
    if len(mo.split('annihilation cross section')) == 1: #No sv found because Omega <0.
        continue
    else:
        sv = eval(mo.split('annihilation cross section')[1].split()[0])
        
    def capture_BR(x):
    
        if len(mo.split(x)) > 1:
            BR = eval(mo.split(x)[1].split()[0])    
        else:
            BR = 0    
        return BR     
    
    cCn3N3 = capture_BR('~chi,~Chi -> nu3 Nu3')
    cCe3E3 = capture_BR('~chi,~Chi -> e3 E3')
    cCu3U3 = capture_BR('~chi,~Chi -> u3 U3')
    cCZpZp = capture_BR('~chi,~Chi -> Zp Zp')
    #cCZZ = capture_BR('~chi,~Chi -> Z Z')
    #cCh1Z = capture_BR('~chi,~Chi -> h1 Z')
    cCh2Zp = capture_BR('~chi,~Chi -> h2 Zp')
    cCWW = capture_BR('~chi,~Chi -> Wm Wp')

    Xxn3N3 = capture_BR('~~Xi1,~~xi1 -> nu3 Nu3')
    Xxe3E3 = capture_BR('~~Xi1,~~xi1 -> e3 E3')
    Xxu3U3 = capture_BR('~~Xi1,~~xi1 -> u3 U3')
    XxZpZp = capture_BR('~~Xi1,~~xi1 -> Zp Zp')
    #XxZZ = capture_BR('~~Xi1,~~xi1 -> Z Z')
    #Xxh1Z = capture_BR('~~Xi1,~~xi1 -> h1 Z')
    Xxh2Zp = capture_BR('~~Xi1,~~xi1 -> h2 Zp')
    Xxxc = capture_BR('~~Xi1,~~xi1 -> ~chi ~Chi')
    XxWW = capture_BR('~~Xi1,~~xi1 -> Wm Wp')       
    
    x.append([Lam1,Lam2,Lam3,Lam4,Lam5,Lam6,Lam7,Lam8,Lam9,Lam10,Lam11,MS2,Mn2,vX,Yc,muC,g1p,epsilon,\
              ZL11,ZL12,ZL21,ZL22,ZR11,ZR12,ZR21,ZR22,\
          ZN11,ZN12,ZN21,ZN22,mXi_1,mXi_2,mns_1,mns_2,YnL11,YnL12,YnL13,YnL21,YnL22,YnL23,\
          YnR11,YnR12,YnR13,YnR21,YnR22,YnR23,Omega1,Omega2,SIN1,SIN2,sv,MZp,mh1,mh2,theta,thetaf,T,S,U,\
              g2mu,mChi,TWpSPheno,MZpSPheno,SDN1,SDN2,YX11,YX12,YX21,YX22,\
             cCn3N3,cCe3E3,cCu3U3,cCZpZp,cCh2Zp,cCWW,\
             Xxn3N3,Xxe3E3,Xxu3U3,XxZpZp,Xxh2Zp,Xxxc,XxWW,sv1122,sv1100,sv2211,sv2200])

x=np.asarray(x)

xd=pd.DataFrame(x,columns=['Lam1','Lam2','Lam3','Lam4','Lam5','Lam6','Lam7','Lam8','Lam9',\
                           'Lam10','Lam11','MS2','Mn2','vX','Yc','muC','g1p','epsilon',\
                           'ZL11','ZL12','ZL21','ZL22','ZR11','ZR12','ZR21','ZR22','ZN11',\
                           'ZN12','ZN21','ZN22','mXi_1','mXi_2','mns_1','mns_2','YnL11',\
                           'YnL12','YnL13','YnL21','YnL22','YnL23','YnR11','YnR12','YnR13',\
                           'YnR21','YnR22','YnR23','Omega1','Omega2','SIN1','SIN2','sv',\
                           'MZp','mh1','mh2','theta','thetaf','T','S','U','g2mu','mChi',\
                           'TWpSPheno','MZpSPheno','SDN1','SDN2','YX11','YX12','YX21','YX22',\
                           'cCn3N3','cCe3E3','cCu3U3','cCZpZp','cCh2Zp','cCWW',\
                           'Xxn3N3','Xxe3E3','Xxu3U3','XxZpZp','Xxh2Zp','Xxxc','XxWW','sv1122','sv1100','sv2211','sv2200'])

#argv[2] will be the number in the end of the file extension: example: xd_scan1.csv
xd.to_csv('noKM-xd_scan-noKM-XXZpZp-'+sys.argv[2]+'.csv')

t2=time.time() 
print ("The program spent", t2-t1, "s running",Num,"times -> noKM-xd_scan",sys.argv[2],".csv")
