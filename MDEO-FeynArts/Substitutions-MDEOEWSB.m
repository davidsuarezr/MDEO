(* Special Abbreviations for FormCalc *) 
 
 
Sq[g1] ^=g12; 
Sq[g2] ^=g22; 
Sq[g3] ^=g32; 
Conjugate[gBL] ^= gBLC; 
Conjugate[gBLC] ^= gBL; 
Sq[gBL] ^=gBL2; 
Conjugate[gBY] ^= gBYC; 
Conjugate[gBYC] ^= gBY; 
Sq[gBY] ^=gBY2; 
Conjugate[gYB] ^= gYBC; 
Conjugate[gYBC] ^= gYB; 
Sq[gYB] ^=gYB2; 
Conjugate[Yd[a___]] ^= YdC[a]; 
Conjugate[YdC[a___]] ^= Yd[a]; 
Sq[Yd[a___]] ^=Yd2[a]; 
Conjugate[Ye[a___]] ^= YeC[a]; 
Conjugate[YeC[a___]] ^= Ye[a]; 
Sq[Ye[a___]] ^=Ye2[a]; 
Conjugate[Yu[a___]] ^= YuC[a]; 
Conjugate[YuC[a___]] ^= Yu[a]; 
Sq[Yu[a___]] ^=Yu2[a]; 
Conjugate[mu] ^= muC; 
Conjugate[muC] ^= mu; 
Sq[mu] ^=mu2; 
Conjugate[lam1] ^= lam1C; 
Conjugate[lam1C] ^= lam1; 
Sq[lam1] ^=lam12; 
Conjugate[YX[a___]] ^= YXC[a]; 
Conjugate[YXC[a___]] ^= YX[a]; 
Sq[YX[a___]] ^=YX2[a]; 
Conjugate[YC] ^= YCC; 
Conjugate[YCC] ^= YC; 
Sq[YC] ^=YC2; 
Conjugate[MUP] ^= MUPC; 
Conjugate[MUPC] ^= MUP; 
Sq[MUP] ^=MUP2; 
Conjugate[lam2] ^= lam2C; 
Conjugate[lam2C] ^= lam2; 
Sq[lam2] ^=lam22; 
Conjugate[lam3] ^= lam3C; 
Conjugate[lam3C] ^= lam3; 
Sq[lam3] ^=lam32; 
Conjugate[v] ^= vC; 
Conjugate[vC] ^= v; 
Sq[v] ^=v2; 
Sq[vX] ^=vX2; 
Sq[ZZ[a___]] ^=ZZ2[a]; 
Conjugate[ZW[a___]] ^= ZWC[a]; 
Conjugate[ZWC[a___]] ^= ZW[a]; 
Sq[ZW[a___]] ^=ZW2[a]; 
Sq[ZH[a___]] ^=ZH2[a]; 
Sq[ZA[a___]] ^=ZA2[a]; 
Conjugate[ZL[a___]] ^= ZLC[a]; 
Conjugate[ZLC[a___]] ^= ZL[a]; 
Sq[ZL[a___]] ^=ZL2[a]; 
Conjugate[ZR[a___]] ^= ZRC[a]; 
Conjugate[ZRC[a___]] ^= ZR[a]; 
Sq[ZR[a___]] ^=ZR2[a]; 
Conjugate[ZDL[a___]] ^= ZDLC[a]; 
Conjugate[ZDLC[a___]] ^= ZDL[a]; 
Sq[ZDL[a___]] ^=ZDL2[a]; 
Conjugate[ZDR[a___]] ^= ZDRC[a]; 
Conjugate[ZDRC[a___]] ^= ZDR[a]; 
Sq[ZDR[a___]] ^=ZDR2[a]; 
Conjugate[ZUL[a___]] ^= ZULC[a]; 
Conjugate[ZULC[a___]] ^= ZUL[a]; 
Sq[ZUL[a___]] ^=ZUL2[a]; 
Conjugate[ZUR[a___]] ^= ZURC[a]; 
Conjugate[ZURC[a___]] ^= ZUR[a]; 
Sq[ZUR[a___]] ^=ZUR2[a]; 
Conjugate[ZEL[a___]] ^= ZELC[a]; 
Conjugate[ZELC[a___]] ^= ZEL[a]; 
Sq[ZEL[a___]] ^=ZEL2[a]; 
Conjugate[ZER[a___]] ^= ZERC[a]; 
Conjugate[ZERC[a___]] ^= ZER[a]; 
Sq[ZER[a___]] ^=ZER2[a]; 
Conjugate[UV[a___]] ^= UVC[a]; 
Conjugate[UVC[a___]] ^= UV[a]; 
Sq[UV[a___]] ^=UV2[a]; 
Conjugate[el] ^= elC; 
Conjugate[elC] ^= el; 
Sq[el] ^=el2; 
Conjugate[TW] ^= TWC; 
Conjugate[TWC] ^= TW; 
Sq[TW] ^=TW2; 
Conjugate[TWp] ^= TWpC; 
Conjugate[TWpC] ^= TWp; 
Sq[TWp] ^=TWp2; 
Conjugate[aS] ^= aSC; 
Conjugate[aSC] ^= aS; 
Sq[aS] ^=aS2; 
Sq[aEWinv] ^=aEWinv2; 
Conjugate[MassVWm] ^= MassVWmC; 
Conjugate[MassVWmC] ^= MassVWm; 
Sq[MassVWm] ^=MassVWm2; 
Sq[Gf] ^=Gf2; 
Sq[Masshh[a___]] =Masshh2[a]; 
Sq[MassAh[a___]] =MassAh2[a]; 
Sq[MassXi[a___]] =MassXi2[a]; 
Sq[MassFd[a___]] =MassFd2[a]; 
Sq[MassFu[a___]] =MassFu2[a]; 
Sq[MassFe[a___]] =MassFe2[a]; 
Sq[MassFv[a___]] =MassFv2[a]; 
Sq[MassHm] =MassHm2; 
Sq[MassChi] =MassChi2; 
Sq[MassVZ] =MassVZ2; 
Sq[MassVZp] =MassVZp2; 
Sq[MassVWm] =MassVWm2; 
Cos[ThetaW] ^= CW; 
Sin[ThetaW] ^= SW; 
A[x_]:=ToExpression["A"<>ToString[InputForm[x]]]; 
 
 
 (* Dependences *) 
 
Dependences = 
 {ZZ[index1_Integer, index2_Integer] :> {{Cos[ThetaW], -(Cos[ThetaWp]*Sin[ThetaW]), Sin[ThetaW]*Sin[ThetaWp]}, {Sin[ThetaW], Cos[ThetaW]*Cos[ThetaWp], -(Cos[ThetaW]*Sin[ThetaWp])}, {0, Sin[ThetaWp], Cos[ThetaWp]}}[[index1,index2]], ZW[index1_Integer, index2_Integer] :> {{1/Sqrt[2], 1/Sqrt[2]}, {(-I)/Sqrt[2], I/Sqrt[2]}}[[index1,index2]]}
 
DependencesOptional = 
 {g1 -> e*Sec[ThetaW], g2 -> e*Csc[ThetaW]}
 
DependencesNum = 
 {g1 -> e*Sec[ThetaW], g2 -> e*Csc[ThetaW], g3 -> 2*Sqrt[AlphaS]*Sqrt[Pi], e -> 2*Sqrt[aEWinv^(-1)]*Sqrt[Pi], Yu[index1_Integer, index2_Integer] :> {{(Sqrt[2]*Mass[Fu, 1])/vH, 0, 0}, {0, (Sqrt[2]*Mass[Fu, 2])/vH, 0}, {0, 0, (Sqrt[2]*Mass[Fu, 3])/vH}}[[index1,index2]], Yu[index1_, index2_] :> {{(Sqrt[2]*Mass[Fu, 1])/vH, 0, 0}, {0, (Sqrt[2]*Mass[Fu, 2])/vH, 0}, {0, 0, (Sqrt[2]*Mass[Fu, 3])/vH}}[index1, index2], Yd[index1_Integer, index2_Integer] :> {{(Sqrt[2]*Mass[Fd, 1])/vH, 0, 0}, {0, (Sqrt[2]*Mass[Fd, 2])/vH, 0}, {0, 0, (Sqrt[2]*Mass[Fd, 3])/vH}}[[index1,index2]], Yd[index1_, index2_] :> {{(Sqrt[2]*Mass[Fd, 1])/vH, 0, 0}, {0, (Sqrt[2]*Mass[Fd, 2])/vH, 0}, {0, 0, (Sqrt[2]*Mass[Fd, 3])/vH}}[index1, index2], Ye[index1_Integer, index2_Integer] :> {{(Sqrt[2]*Mass[Fe, 1])/vH, 0, 0}, {0, (Sqrt[2]*Mass[Fe, 2])/vH, 0}, {0, 0, (Sqrt[2]*Mass[Fe, 3])/vH}}[[index1,index2]], Ye[index1_, index2_] :> {{(Sqrt[2]*Mass[Fe, 1])/vH, 0, 0}, {0, (Sqrt[2]*Mass[Fe, 2])/vH, 0}, {0, 0, (Sqrt[2]*Mass[Fe, 3])/vH}}[index1, index2], vH -> 2*Sqrt[Mass[VWm]^2/g2^2], ThetaW -> ArcSin[Sqrt[1 - Mass[VWm]^2/Mass[VZ]^2]], Mass[VWm] -> Sqrt[Mass[VZ]^2/2 + Sqrt[-((Pi*Mass[VZ]^2)/(Sqrt[2]*aEWinv*Gf)) + Mass[VZ]^4/4]]}
 
 
(* Masses *) 
 
MassesSARAH = { 
 MassVG[generation_] ->MassGiven[VG], 
MassgG[generation_] ->MassGiven[gG], 
MassHm[generation_] ->MassRead[Hm], 
MassChi[generation_] ->MassRead[Chi], 
MassChi[generation_] ->MassRead[Chi], 
MassVP[generation_] ->MassGiven[VP], 
MassVZ[generation_] ->MassGiven[VZ], 
MassVZp[generation_] ->MassRead[VZp], 
MassgP[generation_] ->MassGiven[gP], 
MassgZ[generation_] ->MassGiven[gZ], 
MassgZp[generation_] ->0, 
MassgWm[generation_] ->MassGiven[gWm], 
MassgWmC[generation_] ->MassGiven[gWmC], 
Masshh[gen_][generation_] ->MassRead[hh[gen]], 
MassAh[gen_][generation_] ->MassRead[Ah[gen]], 
MassXi[gen_][generation_] ->MassRead[Xi[gen]], 
MassXi[gen_][generation_] ->MassRead[Xi[gen]], 
MassFd[1][generation_] ->MassGiven[Fd[1]], 
MassFd[2][generation_] ->MassGiven[Fd[2]], 
MassFd[3][generation_] ->MassGiven[Fd[3]], 
MassFd[1][generation_] ->MassGiven[Fd[1]], 
MassFd[2][generation_] ->MassGiven[Fd[2]], 
MassFd[3][generation_] ->MassGiven[Fd[3]], 
MassFu[1][generation_] ->MassGiven[Fu[1]], 
MassFu[2][generation_] ->MassGiven[Fu[2]], 
MassFu[3][generation_] ->MassGiven[Fu[3]], 
MassFu[1][generation_] ->MassGiven[Fu[1]], 
MassFu[2][generation_] ->MassGiven[Fu[2]], 
MassFu[3][generation_] ->MassGiven[Fu[3]], 
MassFe[1][generation_] ->MassGiven[Fe[1]], 
MassFe[2][generation_] ->MassGiven[Fe[2]], 
MassFe[3][generation_] ->MassGiven[Fe[3]], 
MassFe[1][generation_] ->MassGiven[Fe[1]], 
MassFe[2][generation_] ->MassGiven[Fe[2]], 
MassFe[3][generation_] ->MassGiven[Fe[3]], 
MassFv[1][generation_] ->MassGiven[Fv[1]], 
MassFv[2][generation_] ->MassGiven[Fv[2]], 
MassFv[3][generation_] ->MassGiven[Fv[3]]
}; 
 
 
(* NumericalValues *) 
 
NumericalValues = 
 {WidthGiven[VB] -> 0, MassGiven[VB] -> 0, WidthGiven[gB] -> 0, MassGiven[gB] -> 0, WidthGiven[VWB] -> 0, MassGiven[VWB] -> 0, WidthGiven[gWB] -> 0, MassGiven[gWB] -> 0, WidthGiven[VG] -> 0, MassGiven[VG] -> 0, WidthGiven[gG] -> 0, MassGiven[gG] -> 0, WidthGiven[H0] -> 0, WidthGiven[VG] -> 0, MassGiven[VG] -> 0, WidthGiven[gG] -> 0, MassGiven[gG] -> 0, WidthGiven[Hm] -> 0, WidthGiven[VP] -> 0, MassGiven[VP] -> 0, WidthGiven[VZ] -> 2.4952, MassGiven[VZ] -> 91.1876, WidthGiven[gP] -> 0, MassGiven[gP] -> 0, MassGiven[gZ] -> Mass[VZ], WidthGiven[gZp] -> 0, WidthGiven[VWm] -> 2.141, MassGiven[gWm] -> Mass[VWm], MassGiven[gWmC] -> Mass[VWm], WidthGiven[Ah[1]] -> 0, WidthGiven[Fd[1]] -> 0, WidthGiven[Fd[2]] -> 0, WidthGiven[Fd[3]] -> 0, MassGiven[Fd[1]] -> 0.0035, MassGiven[Fd[2]] -> 0.104, MassGiven[Fd[3]] -> 4.2, WidthGiven[Fd[1]] -> 0, WidthGiven[Fd[2]] -> 0, WidthGiven[Fd[3]] -> 0, MassGiven[Fd[1]] -> 0.0035, MassGiven[Fd[2]] -> 0.104, MassGiven[Fd[3]] -> 4.2, WidthGiven[Fu[1]] -> 0, WidthGiven[Fu[2]] -> 0, WidthGiven[Fu[3]] -> 1.51, MassGiven[Fu[1]] -> 0.0015, MassGiven[Fu[2]] -> 1.27, MassGiven[Fu[3]] -> 171.2, WidthGiven[Fu[1]] -> 0, WidthGiven[Fu[2]] -> 0, WidthGiven[Fu[3]] -> 1.51, MassGiven[Fu[1]] -> 0.0015, MassGiven[Fu[2]] -> 1.27, MassGiven[Fu[3]] -> 171.2, WidthGiven[Fe[1]] -> 0, WidthGiven[Fe[2]] -> 0, WidthGiven[Fe[3]] -> 0, MassGiven[Fe[1]] -> 0.000511, MassGiven[Fe[2]] -> 0.105, MassGiven[Fe[3]] -> 1.776, WidthGiven[Fe[1]] -> 0, WidthGiven[Fe[2]] -> 0, WidthGiven[Fe[3]] -> 0, MassGiven[Fe[1]] -> 0.000511, MassGiven[Fe[2]] -> 0.105, MassGiven[Fe[3]] -> 1.776, WidthGiven[Fv[1]] -> 0, WidthGiven[Fv[2]] -> 0, WidthGiven[Fv[3]] -> 0, MassGiven[Fv[1]] -> 0, MassGiven[Fv[2]] -> 0, MassGiven[Fv[3]] -> 0, MZp -> 1500, AlphaS -> 0.119, Gf -> 0.0000116639, aEWinv -> 137.035999679, ZM[1, 1] -> 1.`10., ZM[1, 2] -> 0, ZM[1, 3] -> 0, ZM[1, 4] -> 0, ZM[1, 5] -> 0, Mass[VL, 1] -> 0, ZM[2, 1] -> 0, ZM[2, 2] -> 1.`10., ZM[2, 3] -> 0, ZM[2, 4] -> 0, ZM[2, 5] -> 0, Mass[VL, 2] -> 0, ZM[3, 1] -> 0, ZM[3, 2] -> 0, ZM[3, 3] -> 1.`10., ZM[3, 4] -> 0, ZM[3, 5] -> 0, Mass[VL, 3] -> 0, ZM[4, 1] -> 0, ZM[4, 2] -> 0, ZM[4, 3] -> 0, ZM[4, 4] -> 1.`10., ZM[4, 5] -> 0, Mass[VL, 4] -> 0, ZM[5, 1] -> 0, ZM[5, 2] -> 0, ZM[5, 3] -> 0, ZM[5, 4] -> 0, ZM[5, 5] -> 1.`10., Mass[VL, 5] -> 0}
 
 
