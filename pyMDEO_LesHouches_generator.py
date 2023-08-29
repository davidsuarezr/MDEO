#!/usr/bin/env python

#Created by Andres Rivera. File for red LSHAFiles

import pyslha

def buildSLHAinFile():

    ########################### CREATED THE LHAFILE #######################
    #Read the blocks, but do not read all its entries.
    LHA = pyslha.readSLHAFile('LesHouches.in.MDEO_low', ignorenomass=True)

    #Add entries with coments (some of them were vacum)
    LHA.blocks['MODSEL'].entries[1]='0               #  1/0: High/low scale input' 
    LHA.blocks['MODSEL'].entries[2]='1              # Boundary Condition'
    LHA.blocks['MODSEL'].entries[6]='1               # Generation Mixing'
    LHA.blocks['MODSEL'].entries[12]='173.5         # Renormalization scale'  

    LHA.blocks['SMINPUTS'].entries[2]='1.166370E-05    # G_F,Fermi constant' 
    LHA.blocks['SMINPUTS'].entries[3]='1.187000E-01    # alpha_s(MZ) SM MSbar' 
    LHA.blocks['SMINPUTS'].entries[4]='9.118870E+01    # Z-boson pole mass' 
    LHA.blocks['SMINPUTS'].entries[5]='4.180000E+00    # m_b(mb) SM MSbar' 
    LHA.blocks['SMINPUTS'].entries[6]='1.735000E+02    # m_top(pole)' 
    LHA.blocks['SMINPUTS'].entries[7]='1.776690E+00    # m_tau(pole)' 

    LHA.blocks['MINPAR'].entries[1]='1.000000E-01    # lambda1Input'
    LHA.blocks['MINPAR'].entries[2]='2.000000E-02    # lambda2Input'
    LHA.blocks['MINPAR'].entries[3]='3.000000E-01    # lambda3Input'
    LHA.blocks['MINPAR'].entries[4]='4.000000E-02    # lambda4Input'
    LHA.blocks['MINPAR'].entries[5]='3.000000E-03    # lambda5Input'
    LHA.blocks['MINPAR'].entries[6]='2.000000E-02    # lambda6Input'
    LHA.blocks['MINPAR'].entries[7]='3.000000E-02    # lambda7Input'
    LHA.blocks['MINPAR'].entries[8]='3.000000E-02    # lambda8Input'
    LHA.blocks['MINPAR'].entries[9]='3.000000E-02    # lambda9Input'
    LHA.blocks['MINPAR'].entries[10]='1.000000E-01    # lambda10Input'
    LHA.blocks['MINPAR'].entries[11]='2.000000E-00    # lambda11Input'
    LHA.blocks['MINPAR'].entries[20]='1.000000E-01    # g1pINPUT'
    LHA.blocks['MINPAR'].entries[21]='0.000000E+00    # g1p1INPUT'
    LHA.blocks['MINPAR'].entries[22]='0.000000E+00    # g11pINPUT'
    LHA.blocks['MINPAR'].entries[23]='2.000000E+08    # mEt2Input'
    LHA.blocks['MINPAR'].entries[24]='1.000000E+08    # MS2Input'
    LHA.blocks['MINPAR'].entries[30]='2.000000E+06    # vXinput'
    LHA.blocks['MINPAR'].entries[31]='1.000000E-02    # Ycinput'
    LHA.blocks['MINPAR'].entries[32]='2.000000E-02    # muCinput'
    
    #Block SPhenoinput
    LHA.blocks['SPHENOINPUT'].entries[1]='-1            # error level' 
    LHA.blocks['SPHENOINPUT'].entries[2]='0               # SPA conventions' 
    LHA.blocks['SPHENOINPUT'].entries[7]='1               # Skip 2-loop Higgs corrections' 
    LHA.blocks['SPHENOINPUT'].entries[8]='3               # Method used for two-loop calculation' 
    LHA.blocks['SPHENOINPUT'].entries[9]='1               # Gaugeless limit used at two-loop' 
    LHA.blocks['SPHENOINPUT'].entries[10]='0               # safe-mode used at two-loop' 
    LHA.blocks['SPHENOINPUT'].entries[11]='1               # calculate branching ratios' 
    LHA.blocks['SPHENOINPUT'].entries[13]='1               # 3-Body decays: none (0), fermion (1), scalar (2), both (3)' 
    LHA.blocks['SPHENOINPUT'].entries[14]='0               # Run couplings to scale of decaying particle'
    LHA.blocks['SPHENOINPUT'].entries[12]='1.000E-04       # write only branching ratios larger than this value'
    LHA.blocks['SPHENOINPUT'].entries[15]='1.000E-30       # write only decay if width larger than this value' 
    LHA.blocks['SPHENOINPUT'].entries[19]='-2              # Matching order (-2:automatic, -1:pole, 0-2: tree, one- & two-loop)' 
    LHA.blocks['SPHENOINPUT'].entries[31]='-1              # fixed GUT scale (-1: dynamical GUT scale)' 
    LHA.blocks['SPHENOINPUT'].entries[32]='0               # Strict unification' 
    LHA.blocks['SPHENOINPUT'].entries[34]='1.000E-04       # Precision of mass calculation' 
    LHA.blocks['SPHENOINPUT'].entries[35]='40              # Maximal number of iterations'
    LHA.blocks['SPHENOINPUT'].entries[36]='5               # Minimal number of iterations before discarding points'
    LHA.blocks['SPHENOINPUT'].entries[37]='1               # Set Yukawa scheme'  
    LHA.blocks['SPHENOINPUT'].entries[38]='1               # 1- or 2-Loop RGEs' 
    LHA.blocks['SPHENOINPUT'].entries[50]='0               # Majorana phases: use only positive masses (put 0 to use file with CalcHep/Micromegas!)' 
    LHA.blocks['SPHENOINPUT'].entries[51]='0               # Write Output in CKM basis' 
    LHA.blocks['SPHENOINPUT'].entries[52]='1               # Write spectrum in case of tachyonic states' 
    LHA.blocks['SPHENOINPUT'].entries[55]='1               # Calculate loop corrected masses' 
    LHA.blocks['SPHENOINPUT'].entries[57]='1               # Calculate low energy constraints' 
    LHA.blocks['SPHENOINPUT'].entries[60]='1               # Include possible, kinetic mixing '
    LHA.blocks['SPHENOINPUT'].entries[65]='1               # Solution tadpole equation' 
    LHA.blocks['SPHENOINPUT'].entries[66]='1               # Two-Scale Matching' 
    LHA.blocks['SPHENOINPUT'].entries[67]='1               # effective Higgs mass calculation' 
    LHA.blocks['SPHENOINPUT'].entries[75]='0               # Write WHIZARD files' 
    LHA.blocks['SPHENOINPUT'].entries[76]='2               # Write HiggsBounds file: 2 for HiggsBounds5, 1 for HiggsBounds4 and below'   
    LHA.blocks['SPHENOINPUT'].entries[77]='1               # Output for MicrOmegas (running masses for light quarks; real mixing matrices)'   
    LHA.blocks['SPHENOINPUT'].entries[78]='0               # Output for MadGraph (writes also vanishing blocks)'   
    LHA.blocks['SPHENOINPUT'].entries[79]='0               # Write WCXF files (exchange format for Wilson coefficients)' 
    LHA.blocks['SPHENOINPUT'].entries[86]='0.              # Maximal width to be counted as invisible in Higgs decays; -1: only LSP' 
    LHA.blocks['SPHENOINPUT'].entries[440]='1               # Tree-level unitarity constraints (limit s->infinity)' 
    LHA.blocks['SPHENOINPUT'].entries[441]='1               # Full tree-level unitarity constraints' 
    LHA.blocks['SPHENOINPUT'].entries[442]='1000.           # sqrt(s_min)'   
    LHA.blocks['SPHENOINPUT'].entries[443]='2000.           # sqrt(s_max)'   
    LHA.blocks['SPHENOINPUT'].entries[444]='5               # steps'   
    LHA.blocks['SPHENOINPUT'].entries[445]='0               # running'   
    LHA.blocks['SPHENOINPUT'].entries[510]='0.              # Write tree level values for tadpole solutions' 
    LHA.blocks['SPHENOINPUT'].entries[515]='0               # Write parameter values at GUT scale' 
    LHA.blocks['SPHENOINPUT'].entries[520]='1.              # Write effective Higgs couplings (HiggsBounds blocks): put 0 to use file with MadGraph!' 
    LHA.blocks['SPHENOINPUT'].entries[521]='1.              # Diphoton/Digluon widths including higher order' 
    LHA.blocks['SPHENOINPUT'].entries[525]='0.              # Write loop contributions to diphoton decay of Higgs' 
    LHA.blocks['SPHENOINPUT'].entries[530]='0.              # Write Blocks for Vevacious' 
    LHA.blocks['SPHENOINPUT'].entries[1101]='1              # Include Chi in 1.loop corrections' 
    LHA.blocks['SPHENOINPUT'].entries[1102]='1              # Include Xi in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1103]='1              # Include Fd in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1104]='1              # Include Fu in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1105]='1              # Include Fe in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1106]='1              # Include Fv in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1201]='1              # Include Hp in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1202]='1              # Include etp in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1203]='1              # Include etI in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1204]='1              # Include hh in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1205]='1              # Include Ah in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1206]='1              # Include ns in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1301]='1              # Include VG in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1302]='1              # Include VP in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1303]='1              # Include VZ in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1304]='1              # Include VZp in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1305]='1              # Include VWm in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1401]='1              # Include gG in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1402]='1              # Include gA in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1403]='1              # Include gZ in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1404]='1              # Include gZp in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1405]='1              # Include gWm in 1.loop corrections '
    LHA.blocks['SPHENOINPUT'].entries[1406]='1              # Include gWpC in 1.loop corrections' 
    LHA.blocks['SPHENOINPUT'].entries[1500]='1              # Include Wave diagrams 1.loop corrections' 
    LHA.blocks['SPHENOINPUT'].entries[1501]='1              # Include Penguin diagrams 1.loop corrections' 
    LHA.blocks['SPHENOINPUT'].entries[1502]='1              # Include Box diagrams 1.loop corrections' 

    #Block DECAYOPTIONS
    LHA.blocks['DECAYOPTIONS'].entries[1]='1     # Calc 3-Body decays of Fu' 
    LHA.blocks['DECAYOPTIONS'].entries[2]='1     # Calc 3-Body decays of Fe'
    LHA.blocks['DECAYOPTIONS'].entries[3]='1     # Calc 3-Body decays of Fd' 

    #Block YNLIN    #  
    LHA.blocks['YNLIN'].entries[1,1]='   1.000000E-02         # YnL(1,1)'
    LHA.blocks['YNLIN'].entries[1,2]='   2.000000E-02         # YnL(1,2)'
    LHA.blocks['YNLIN'].entries[1,3]='   1.000000E-01         # YnL(1,3)'
    LHA.blocks['YNLIN'].entries[2,1]='   2.000000E-02         # YnL(2,1)'
    LHA.blocks['YNLIN'].entries[2,2]='   3.000000E-03         # YnL(2,2)'
    LHA.blocks['YNLIN'].entries[2,3]='   2.000000E-02         # YnL(2,3)'

    #Block YNRIN    #  
    LHA.blocks['YNRIN'].entries[1,1]='   1.000000E-02         # YnR(1,1)'
    LHA.blocks['YNRIN'].entries[1,2]='   2.000000E-02         # YnR(1,2)'
    LHA.blocks['YNRIN'].entries[1,3]='   1.000000E-03         # YnR(1,3)'
    LHA.blocks['YNRIN'].entries[2,1]='   2.000000E-02         # YnR(2,1)'
    LHA.blocks['YNRIN'].entries[2,2]='   3.000000E-01         # YnR(2,2)'
    LHA.blocks['YNRIN'].entries[2,3]='   1.000000E-02         # YnR(2,3)'
 
    #Block YXIN    #  
    LHA.blocks['YXIN'].entries[1,1]='   1.000000E-02         # YX(1,1)'
    LHA.blocks['YXIN'].entries[1,2]='   2.000000E-02         # YX(1,2)'
    LHA.blocks['YXIN'].entries[2,1]='   3.000000E-03         # YX(2,1)'
    LHA.blocks['YXIN'].entries[2,2]='   4.000000E-02         # YX(2,2)'
    ################################################################

    return LHA

# Example: Modific the LesHouches_low   
#LHA.blocks['MINPAR'].entries[2]='%.7E    # MDFInput' %222
#xdict['MINPAR'].entries[3]='%.6E    # MS12Input' %MS12      

#Write the file
#pyslha.writeSLHAFile('InputFile',LHA)
 
