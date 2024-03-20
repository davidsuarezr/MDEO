###+++++++++ python rutine to get the DeltaN effective +++++++++++++++++++++++++++++

import numpy as np
import pandas as pd
import numpy as py
from scipy.special import zeta
from scipy.optimize import bisect
from scipy import integrate as intg
from scipy import interpolate
from scipy.interpolate import InterpolatedUnivariateSpline

Tdec_νL = 0.0023
T, g = np.loadtxt('GT.dat',usecols=(0,1),unpack=True); T*=1e-3
geff = InterpolatedUnivariateSpline(T, g)
g_eff = lambda T: geff(T)

def H(T, G_N):
    return np.sqrt(4.0*np.pi**3*G_N*(g_eff(T)+21.0/4.0)/45.0)*T**2

def ΓνR(T,  epsilon, ThetaWp, gB):
    g1     = 3.55690247e-1
    g2     = 6.62798598e-1
    ThetaW = 4.9253522213664613e-1
    Mz     = 9.11887000e1
    gYB    = -g1*epsilon
    gBY    = 0.0
    gnuRZ  = 9.0*(-gB*np.sin(ThetaWp)+gYB*np.cos(ThetaWp)*np.sin(ThetaW))
    gdLZ   = 1.0/6.0*(3.0*g2*np.cos(ThetaW)*np.cos(ThetaWp)+g1*np.cos(ThetaWp)*np.sin(ThetaW)-gBY*np.sin(ThetaWp))
    gdRZ   = -1.0/3.0*(g1*np.cos(ThetaWp)*np.sin(ThetaW)-gBY*np.sin(ThetaWp))
    guLZ   = -1.0/6.0*(3.0*g2*np.cos(ThetaW)*np.cos(ThetaWp)-g1*np.cos(ThetaWp)*np.sin(ThetaW)+gBY*np.sin(ThetaWp))
    guRZ   = 2.0/3.0*(g1*np.cos(ThetaWp)*np.sin(ThetaWp)-gBY*np.sin(ThetaWp))  
    geLZ   = 1.0/2.0*(-g1*np.cos(ThetaWp)*np.sin(ThetaW)+g2*np.cos(ThetaWp)*np.cos(ThetaW)+gBY*np.sin(ThetaWp))
    geRZ   = -1.0*(g1*np.cos(ThetaWp)*np.sin(ThetaWp)-gBY*np.sin(ThetaWp))    
    gnuLZ  = -1.0/2.0*(g1*np.cos(ThetaWp)*np.sin(ThetaW)+g2*np.cos(ThetaWp)*np.cos(ThetaW)-gBY*np.sin(ThetaWp))
    Gamma  = (49/194400)*np.pi**5/zeta(3)*(1.0/Mz)**4.0*T**5.0*gnuRZ**2.0*3.0*(3.0*(gdLZ**2.0+gdRZ**2.0+guLZ**2.0+guRZ**2.0)+geLZ**2.0+geRZ**2.0+gnuLZ**2.0)
    return Gamma

def TdecνR(epsilon, ThetaWp, gB):
    G_N = 6.718624025799517e-39
    ΓH = lambda T, epsilon, ThetaWp, gB, G_N: ΓνR(T, epsilon, ThetaWp, gB)-H(T, G_N)
    return bisect(ΓH,T[0],T[-1], args=(epsilon, ThetaWp, gB, G_N))

def ΔNeff1(Tdec_νL,epsilon, ThetaWp, gB):
    
    G_N = 6.718624025799517e-39
    ΓH = lambda T, epsilon, ThetaWp, gB, G_N: ΓνR(T, epsilon, ThetaWp, gB)-H(T, G_N)
    
    Tdec_νR = bisect(ΓH,T[0],T[-1], args=(epsilon, ThetaWp, gB, G_N))
    
    ΔNef = 3.0*(g_eff(Tdec_νL)/g_eff(Tdec_νR))**(4/3)
    
    return ΔNef

#run all dataframe
ΔNeff1_vec = np.vectorize(ΔNeff1,doc='Input for pyfunc below: Tdec_νL,epsilon, ThetaWp, gB')

