(* ----------------------------------------------------------------------------- *) 
(* This model file was automatically created by SARAH version4.12.3  *) 
(* SARAH References: arXiv:0806.0538, 0909.2863, 1002.0840, 1207.0906, 1309.7223 *) 
(* (c) Florian Staub, 2013  *) 
(* ----------------------------------------------------------------------------- *) 
(* File created at 20:04 on 1.7.2023  *) 
(* ---------------------------------------------------------------------- *) 
 
 
IndexRange[  Index[Colour]  ] =NoUnfold[Range[3]]; 
IndexStyle[  Index[Colour, i_Integer ] ] := Greek[i];  
IndexRange[  Index[I2Gen]  ] =Range[2]; 
IndexStyle[  Index[I2Gen, i_Integer ] ] := Alph[ 8+i];  
IndexRange[  Index[I3Gen]  ] =Range[3]; 
IndexStyle[  Index[I3Gen, i_Integer ] ] := Alph[ 8+i];  
IndexRange[  Index[I5Gen]  ] =Range[5]; 
IndexStyle[  Index[I5Gen, i_Integer ] ] := Alph[ 8+i];  
IndexRange[  Index[Gluon]  ] =NoUnfold[Range[8]]; 
IndexStyle[  Index[Gluon, i_Integer ] ] := Alph[ 8+i];  

 
(* Definitions for trigonometric functions  
Sin[ThetaW]: STW
Sin[2*ThetaW]: S2TW
Sin[ThetaWp]: STWp
Sin[2*ThetaWp]: S2TWp
Cos[ThetaW]: CTW
Cos[ThetaWp]: CTWp
*) 
 
Conjugate[STW] ^= STW
Conjugate[S2TW] ^= S2TW
Conjugate[STWp] ^= STWp
Conjugate[S2TWp] ^= S2TWp
Conjugate[CTW] ^= CTW
Conjugate[CTWp] ^= CTWp
 
 
Lam[a_,b_,c_]:=2*SUNT[a,b,c]; 
fSU3[a_,b_,c_]:=SUNF[a,b,c]; 
LambdaProd[a_,b_][c_,d_]:=4*SUNT[a,b,c,d]; 
 
 
M$ClassesDescription= {
S[3] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassHm,
PropagatorLabel->ComposedChar["H","-"],
PropagatorType -> ScalarDash,
PropagatorArrow -> Forward},

 
S[1] == {SelfConjugate -> True,
Indices -> {Index[I2Gen]},
Mass -> Masshh,
PropagatorLabel->ComposedChar["h",Index[I2Gen]],
PropagatorType -> ScalarDash,
PropagatorArrow -> None},

 
S[2] == {SelfConjugate -> True,
Indices -> {Index[I2Gen]},
Mass -> MassAh,
PropagatorLabel->ComposedChar["A",Index[I2Gen],"h"],
PropagatorType -> ScalarDash,
PropagatorArrow -> None},

 
F[5] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassChi,
PropagatorLabel->chi,
PropagatorType -> Straight,
PropagatorArrow -> Forward},

 
F[6] == {SelfConjugate -> False,
Indices -> {Index[I3Gen]},
Mass -> MassXi,
PropagatorLabel->ComposedChar["\\Xi",Index[I3Gen]],
PropagatorType -> Straight,
PropagatorArrow -> Forward},

 
F[4] == {SelfConjugate -> False,
Indices -> {Index[I3Gen], Index[Colour]},
Mass -> MassFd,
PropagatorLabel->ComposedChar["d",Index[I3Gen],Index[Colour]],
PropagatorType -> Straight,
PropagatorArrow -> Forward},

 
F[3] == {SelfConjugate -> False,
Indices -> {Index[I3Gen], Index[Colour]},
Mass -> MassFu,
PropagatorLabel->ComposedChar["u",Index[I3Gen],Index[Colour]],
PropagatorType -> Straight,
PropagatorArrow -> Forward},

 
F[2] == {SelfConjugate -> False,
Indices -> {Index[I3Gen]},
Mass -> MassFe,
PropagatorLabel->ComposedChar["e",Index[I3Gen]],
PropagatorType -> Straight,
PropagatorArrow -> Forward},

 
F[1] == {SelfConjugate -> True,
Indices -> {Index[I5Gen]},
Mass -> MassFv,
PropagatorLabel->ComposedChar["\\nu",Index[I5Gen]],
PropagatorType -> Straight,
PropagatorArrow -> None},

 
V[5] == {SelfConjugate -> True,
Indices -> {Index[Gluon]},
Mass -> 0,
PropagatorLabel->ComposedChar["g",Index[Gluon]],
PropagatorType -> Sine,
PropagatorArrow -> None},

 
V[1] == {SelfConjugate -> True,
Indices -> {},
Mass -> 0,
PropagatorLabel->ComposedChar["\\gamma"],
PropagatorType -> Sine,
PropagatorArrow -> None},

 
V[2] == {SelfConjugate -> True,
Indices -> {},
Mass -> MassVZ,
PropagatorLabel->ComposedChar["Z"],
PropagatorType -> Sine,
PropagatorArrow -> None},

 
V[10] == {SelfConjugate -> True,
Indices -> {},
Mass -> MassVZp,
PropagatorLabel->ComposedChar["Z'"],
PropagatorType -> Sine,
PropagatorArrow -> None},

 
V[3] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassVWm,
PropagatorLabel->ComposedChar["W","-"],
PropagatorType -> Sine,
PropagatorArrow -> Forward},

 
U[5] == {SelfConjugate -> False,
Indices -> {Index[Gluon]},
Mass -> 0,
PropagatorLabel->ComposedChar["\\eta",Index[Gluon],"G"],
PropagatorType -> GhostDash,
PropagatorArrow -> Forward},

 
U[1] == {SelfConjugate -> False,
Indices -> {},
Mass -> 0,
PropagatorLabel->ComposedChar["\\eta","\\gamma"],
PropagatorType -> GhostDash,
PropagatorArrow -> Forward},

 
U[2] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassVZ,
PropagatorLabel->ComposedChar["\\eta","Z"],
PropagatorType -> GhostDash,
PropagatorArrow -> Forward},

 
U[10] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassVZp,
PropagatorLabel->ComposedChar["\\eta","Z'"],
PropagatorType -> GhostDash,
PropagatorArrow -> Forward},

 
U[3] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassVWm,
PropagatorLabel->ComposedChar["\\eta","-"],
PropagatorType -> GhostDash,
PropagatorArrow -> Forward},

 
U[4] == {SelfConjugate -> False,
Indices -> {},
Mass -> MassVWm,
PropagatorLabel->ComposedChar["\\eta","+"],
PropagatorType -> GhostDash,
PropagatorArrow -> Forward}
 
}

 
MassFd[gen_, y_] = MassFd[gen]
MassFu[gen_, y_] = MassFu[gen]


GaugeXi[S[3,{a_Integer}]] = 1 /; a > 1 
GaugeXi[S[3,1]] = GaugeXi[VWm] /; a > 1 
GaugeXi[S[1,___]] = 1 
GaugeXi[S[2,{a_Integer}]] = 1 /; a > 1 
GaugeXi[S[2,1]] = GaugeXi[VZ] /; a > 1 


GaugeXi[V[5,___]] = GaugeXi[G]
GaugeXi[V[1,___]] = GaugeXi[P]
GaugeXi[V[2,___]] = GaugeXi[Z]
GaugeXi[V[10,___]] = GaugeXi[Zp]
GaugeXi[V[3,___]] = GaugeXi[Wm]


M$CouplingMatrices= {
C[V[5, {ct1}], V[5, {ct2}], V[5, {ct3}], V[5, {ct4}]] == {{I*g3^2*(-IndexSum[fSU3[ct1, ct4, j1]*fSU3[ct2, ct3, j1], {j1, 8}] - IndexSum[fSU3[ct1, ct3, j1]*fSU3[ct2, ct4, j1], {j1, 8}])}, {I*g3^2*(IndexSum[fSU3[ct1, ct4, j1]*fSU3[ct2, ct3, j1], {j1, 8}] - IndexSum[fSU3[ct1, ct2, j1]*fSU3[ct3, ct4, j1], {j1, 8}])}, {I*g3^2*(IndexSum[fSU3[ct1, ct3, j1]*fSU3[ct2, ct4, j1], {j1, 8}] + IndexSum[fSU3[ct1, ct2, j1]*fSU3[ct3, ct4, j1], {j1, 8}])}},
 C[-V[3], V[1], V[1], V[3]] == {{I*g2^2*STW^2}, {I*g2^2*STW^2}, {(-2*I)*g2^2*STW^2}},
 C[-V[3], V[1], V[3], V[2]] == {{(I/2)*CTWp*g2^2*S2TW}, {(-I)*CTWp*g2^2*S2TW}, {(I/2)*CTWp*g2^2*S2TW}},
 C[-V[3], V[1], V[3], V[10]] == {{(-I/2)*g2^2*S2TW*STWp}, {I*g2^2*S2TW*STWp}, {(-I/2)*g2^2*S2TW*STWp}},
 C[-V[3], -V[3], V[3], V[3]] == {{(2*I)*g2^2}, {(-I)*g2^2}, {(-I)*g2^2}},
 C[-V[3], V[3], V[2], V[2]] == {{(-2*I)*CTW^2*CTWp^2*g2^2}, {I*CTW^2*CTWp^2*g2^2}, {I*CTW^2*CTWp^2*g2^2}},
 C[-V[3], V[3], V[2], V[10]] == {{I*CTW^2*g2^2*S2TWp}, {(-I/2)*CTW^2*g2^2*S2TWp}, {(-I/2)*CTW^2*g2^2*S2TWp}},
 C[-V[3], V[3], V[10], V[10]] == {{(-2*I)*CTW^2*g2^2*STWp^2}, {I*CTW^2*g2^2*STWp^2}, {I*CTW^2*g2^2*STWp^2}},
 C[S[2, {gt1}], S[2, {gt2}], V[1], V[1]] == {{(I/2)*CTW^2*g1^2*ZA[gt1, 1]*ZA[gt2, 1] - I*CTW*g1*g2*STW*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*g2^2*STW^2*ZA[gt1, 1]*ZA[gt2, 1] + (2*I)*CTW^2*gYB^2*ZA[gt1, 2]*ZA[gt2, 2]}},
 C[S[2, {gt1}], S[2, {gt2}], V[1], V[2]] == {{(-I/2)*CTW^2*CTWp*g1*g2*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTW*CTWp*g1^2*STW*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTW*CTWp*g2^2*STW*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTWp*g1*g2*STW^2*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTW*g1*gBY*STWp*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*g2*gBY*STW*STWp*ZA[gt1, 1]*ZA[gt2, 1] - (2*I)*CTW*CTWp*gYB^2*STW*ZA[gt1, 2]*ZA[gt2, 2] + (2*I)*CTW*gBL*gYB*STWp*ZA[gt1, 2]*ZA[gt2, 2]}},
 C[S[2, {gt1}], S[2, {gt2}], V[1], V[10]] == {{(I/2)*CTW*CTWp*g1*gBY*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTWp*g2*gBY*STW*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTW^2*g1*g2*STWp*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTW*g1^2*STW*STWp*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTW*g2^2*STW*STWp*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*g1*g2*STW^2*STWp*ZA[gt1, 1]*ZA[gt2, 1] + (2*I)*CTW*CTWp*gBL*gYB*ZA[gt1, 2]*ZA[gt2, 2] + (2*I)*CTW*gYB^2*STW*STWp*ZA[gt1, 2]*ZA[gt2, 2]}},
 C[S[2, {gt1}], S[2, {gt2}], -V[3], V[3]] == {{(I/2)*g2^2*ZA[gt1, 1]*ZA[gt2, 1]}},
 C[S[2, {gt1}], S[2, {gt2}], V[2], V[2]] == {{(I/2)*CTW^2*CTWp^2*g2^2*ZA[gt1, 1]*ZA[gt2, 1] + I*CTW*CTWp^2*g1*g2*STW*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTWp^2*g1^2*STW^2*ZA[gt1, 1]*ZA[gt2, 1] - I*CTW*CTWp*g2*gBY*STWp*ZA[gt1, 1]*ZA[gt2, 1] - I*CTWp*g1*gBY*STW*STWp*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*gBY^2*STWp^2*ZA[gt1, 1]*ZA[gt2, 1] + (2*I)*CTWp^2*gYB^2*STW^2*ZA[gt1, 2]*ZA[gt2, 2] - (4*I)*CTWp*gBL*gYB*STW*STWp*ZA[gt1, 2]*ZA[gt2, 2] + (2*I)*gBL^2*STWp^2*ZA[gt1, 2]*ZA[gt2, 2]}},
 C[S[2, {gt1}], S[2, {gt2}], V[2], V[10]] == {{(-I/2)*CTW*CTWp^2*g2*gBY*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTWp^2*g1*gBY*STW*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTW*g1*g2*S2TWp*STW*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTW^2*CTWp*g2^2*STWp*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTWp*gBY^2*STWp*ZA[gt1, 1]*ZA[gt2, 1] - (I/2)*CTWp*g1^2*STW^2*STWp*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTW*g2*gBY*STWp^2*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*g1*gBY*STW*STWp^2*ZA[gt1, 1]*ZA[gt2, 1] - (2*I)*CTWp^2*gBL*gYB*STW*ZA[gt1, 2]*ZA[gt2, 2] + (2*I)*CTWp*gBL^2*STWp*ZA[gt1, 2]*ZA[gt2, 2] - (2*I)*CTWp*gYB^2*STW^2*STWp*ZA[gt1, 2]*ZA[gt2, 2] + (2*I)*gBL*gYB*STW*STWp^2*ZA[gt1, 2]*ZA[gt2, 2]}},
 C[S[2, {gt1}], S[2, {gt2}], V[10], V[10]] == {{(I/2)*CTWp^2*gBY^2*ZA[gt1, 1]*ZA[gt2, 1] + I*CTW*CTWp*g2*gBY*STWp*ZA[gt1, 1]*ZA[gt2, 1] + I*CTWp*g1*gBY*STW*STWp*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*CTW^2*g2^2*STWp^2*ZA[gt1, 1]*ZA[gt2, 1] + I*CTW*g1*g2*STW*STWp^2*ZA[gt1, 1]*ZA[gt2, 1] + (I/2)*g1^2*STW^2*STWp^2*ZA[gt1, 1]*ZA[gt2, 1] + (2*I)*CTWp^2*gBL^2*ZA[gt1, 2]*ZA[gt2, 2] + (4*I)*CTWp*gBL*gYB*STW*STWp*ZA[gt1, 2]*ZA[gt2, 2] + (2*I)*gYB^2*STW^2*STWp^2*ZA[gt1, 2]*ZA[gt2, 2]}},
 C[S[2, {gt1}], S[3], -V[3], V[1]] == {{-(CTW*g1*g2*ZA[gt1, 1])/2}},
 C[S[2, {gt1}], S[3], -V[3], V[2]] == {{(CTWp*g1*g2*STW*ZA[gt1, 1])/2 - (g2*gBY*STWp*ZA[gt1, 1])/2}},
 C[S[2, {gt1}], S[3], -V[3], V[10]] == {{-(CTWp*g2*gBY*ZA[gt1, 1])/2 - (g1*g2*STW*STWp*ZA[gt1, 1])/2}},
 C[S[2, {gt1}], -S[3], V[1], V[3]] == {{(CTW*g1*g2*ZA[gt1, 1])/2}},
 C[S[2, {gt1}], -S[3], V[3], V[2]] == {{-(CTWp*g1*g2*STW*ZA[gt1, 1])/2 + (g2*gBY*STWp*ZA[gt1, 1])/2}},
 C[S[2, {gt1}], -S[3], V[3], V[10]] == {{(CTWp*g2*gBY*ZA[gt1, 1])/2 + (g1*g2*STW*STWp*ZA[gt1, 1])/2}},
 C[S[1, {gt1}], S[1, {gt2}], V[1], V[1]] == {{(I/2)*CTW^2*g1^2*ZH[gt1, 1]*ZH[gt2, 1] - I*CTW*g1*g2*STW*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*g2^2*STW^2*ZH[gt1, 1]*ZH[gt2, 1] + (2*I)*CTW^2*gYB^2*ZH[gt1, 2]*ZH[gt2, 2]}},
 C[S[1, {gt1}], S[1, {gt2}], V[1], V[2]] == {{(-I/2)*CTW^2*CTWp*g1*g2*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTW*CTWp*g1^2*STW*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTW*CTWp*g2^2*STW*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTWp*g1*g2*STW^2*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTW*g1*gBY*STWp*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*g2*gBY*STW*STWp*ZH[gt1, 1]*ZH[gt2, 1] - (2*I)*CTW*CTWp*gYB^2*STW*ZH[gt1, 2]*ZH[gt2, 2] + (2*I)*CTW*gBL*gYB*STWp*ZH[gt1, 2]*ZH[gt2, 2]}},
 C[S[1, {gt1}], S[1, {gt2}], V[1], V[10]] == {{(I/2)*CTW*CTWp*g1*gBY*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTWp*g2*gBY*STW*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTW^2*g1*g2*STWp*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTW*g1^2*STW*STWp*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTW*g2^2*STW*STWp*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*g1*g2*STW^2*STWp*ZH[gt1, 1]*ZH[gt2, 1] + (2*I)*CTW*CTWp*gBL*gYB*ZH[gt1, 2]*ZH[gt2, 2] + (2*I)*CTW*gYB^2*STW*STWp*ZH[gt1, 2]*ZH[gt2, 2]}},
 C[S[1, {gt1}], S[1, {gt2}], -V[3], V[3]] == {{(I/2)*g2^2*ZH[gt1, 1]*ZH[gt2, 1]}},
 C[S[1, {gt1}], S[1, {gt2}], V[2], V[2]] == {{(I/2)*CTW^2*CTWp^2*g2^2*ZH[gt1, 1]*ZH[gt2, 1] + I*CTW*CTWp^2*g1*g2*STW*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTWp^2*g1^2*STW^2*ZH[gt1, 1]*ZH[gt2, 1] - I*CTW*CTWp*g2*gBY*STWp*ZH[gt1, 1]*ZH[gt2, 1] - I*CTWp*g1*gBY*STW*STWp*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*gBY^2*STWp^2*ZH[gt1, 1]*ZH[gt2, 1] + (2*I)*CTWp^2*gYB^2*STW^2*ZH[gt1, 2]*ZH[gt2, 2] - (4*I)*CTWp*gBL*gYB*STW*STWp*ZH[gt1, 2]*ZH[gt2, 2] + (2*I)*gBL^2*STWp^2*ZH[gt1, 2]*ZH[gt2, 2]}},
 C[S[1, {gt1}], S[1, {gt2}], V[2], V[10]] == {{(-I/2)*CTW*CTWp^2*g2*gBY*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTWp^2*g1*gBY*STW*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTW*g1*g2*S2TWp*STW*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTW^2*CTWp*g2^2*STWp*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTWp*gBY^2*STWp*ZH[gt1, 1]*ZH[gt2, 1] - (I/2)*CTWp*g1^2*STW^2*STWp*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTW*g2*gBY*STWp^2*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*g1*gBY*STW*STWp^2*ZH[gt1, 1]*ZH[gt2, 1] - (2*I)*CTWp^2*gBL*gYB*STW*ZH[gt1, 2]*ZH[gt2, 2] + (2*I)*CTWp*gBL^2*STWp*ZH[gt1, 2]*ZH[gt2, 2] - (2*I)*CTWp*gYB^2*STW^2*STWp*ZH[gt1, 2]*ZH[gt2, 2] + (2*I)*gBL*gYB*STW*STWp^2*ZH[gt1, 2]*ZH[gt2, 2]}},
 C[S[1, {gt1}], S[1, {gt2}], V[10], V[10]] == {{(I/2)*CTWp^2*gBY^2*ZH[gt1, 1]*ZH[gt2, 1] + I*CTW*CTWp*g2*gBY*STWp*ZH[gt1, 1]*ZH[gt2, 1] + I*CTWp*g1*gBY*STW*STWp*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*CTW^2*g2^2*STWp^2*ZH[gt1, 1]*ZH[gt2, 1] + I*CTW*g1*g2*STW*STWp^2*ZH[gt1, 1]*ZH[gt2, 1] + (I/2)*g1^2*STW^2*STWp^2*ZH[gt1, 1]*ZH[gt2, 1] + (2*I)*CTWp^2*gBL^2*ZH[gt1, 2]*ZH[gt2, 2] + (4*I)*CTWp*gBL*gYB*STW*STWp*ZH[gt1, 2]*ZH[gt2, 2] + (2*I)*gYB^2*STW^2*STWp^2*ZH[gt1, 2]*ZH[gt2, 2]}},
 C[S[1, {gt1}], S[3], -V[3], V[1]] == {{(-I/2)*CTW*g1*g2*ZH[gt1, 1]}},
 C[S[1, {gt1}], S[3], -V[3], V[2]] == {{(I/2)*CTWp*g1*g2*STW*ZH[gt1, 1] - (I/2)*g2*gBY*STWp*ZH[gt1, 1]}},
 C[S[1, {gt1}], S[3], -V[3], V[10]] == {{(-I/2)*CTWp*g2*gBY*ZH[gt1, 1] - (I/2)*g1*g2*STW*STWp*ZH[gt1, 1]}},
 C[S[1, {gt1}], -S[3], V[1], V[3]] == {{(-I/2)*CTW*g1*g2*ZH[gt1, 1]}},
 C[S[1, {gt1}], -S[3], V[3], V[2]] == {{(I/2)*CTWp*g1*g2*STW*ZH[gt1, 1] - (I/2)*g2*gBY*STWp*ZH[gt1, 1]}},
 C[S[1, {gt1}], -S[3], V[3], V[10]] == {{(-I/2)*CTWp*g2*gBY*ZH[gt1, 1] - (I/2)*g1*g2*STW*STWp*ZH[gt1, 1]}},
 C[S[3], -S[3], V[1], V[1]] == {{(I/2)*CTW^2*g1^2 + I*CTW*g1*g2*STW + (I/2)*g2^2*STW^2}},
 C[S[3], -S[3], V[1], V[2]] == {{(I/2)*CTW^2*CTWp*g1*g2 - (I/2)*CTW*CTWp*g1^2*STW + (I/2)*CTW*CTWp*g2^2*STW - (I/2)*CTWp*g1*g2*STW^2 + (I/2)*CTW*g1*gBY*STWp + (I/2)*g2*gBY*STW*STWp}},
 C[S[3], -S[3], V[1], V[10]] == {{(I/2)*CTW*CTWp*g1*gBY + (I/2)*CTWp*g2*gBY*STW - (I/2)*CTW^2*g1*g2*STWp + (I/2)*CTW*g1^2*STW*STWp - (I/2)*CTW*g2^2*STW*STWp + (I/2)*g1*g2*STW^2*STWp}},
 C[S[3], -S[3], -V[3], V[3]] == {{(I/2)*g2^2}},
 C[S[3], -S[3], V[2], V[2]] == {{(I/2)*CTW^2*CTWp^2*g2^2 - I*CTW*CTWp^2*g1*g2*STW + (I/2)*CTWp^2*g1^2*STW^2 + I*CTW*CTWp*g2*gBY*STWp - I*CTWp*g1*gBY*STW*STWp + (I/2)*gBY^2*STWp^2}},
 C[S[3], -S[3], V[2], V[10]] == {{(I/2)*CTW*CTWp^2*g2*gBY - (I/2)*CTWp^2*g1*gBY*STW + (I/2)*CTW*g1*g2*S2TWp*STW - (I/2)*CTW^2*CTWp*g2^2*STWp + (I/2)*CTWp*gBY^2*STWp - (I/2)*CTWp*g1^2*STW^2*STWp - (I/2)*CTW*g2*gBY*STWp^2 + (I/2)*g1*gBY*STW*STWp^2}},
 C[S[3], -S[3], V[10], V[10]] == {{(I/2)*CTWp^2*gBY^2 - I*CTW*CTWp*g2*gBY*STWp + I*CTWp*g1*gBY*STW*STWp + (I/2)*CTW^2*g2^2*STWp^2 - I*CTW*g1*g2*STW*STWp^2 + (I/2)*g1^2*STW^2*STWp^2}},
 C[-F[5], F[5], S[2, {gt3}]] == {{-((YC*ZA[gt3, 2])/Sqrt[2])}, {(Conjugate[YC]*ZA[gt3, 2])/Sqrt[2]}},
 C[-F[4, {gt1, ct1}], F[4, {gt2, ct2}], S[2, {gt3}]] == {{-((IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZDL[gt2, j2]]*IndexSum[Conjugate[ZDR[gt1, j1]]*Yd[j1, j2], {j1, 3}], {j2, 3}]*ZA[gt3, 1])/Sqrt[2])}, {(IndexDelta[ct1, ct2]*IndexSum[IndexSum[Conjugate[Yd[j1, j2]]*ZDR[gt2, j1], {j1, 3}]*ZDL[gt1, j2], {j2, 3}]*ZA[gt3, 1])/Sqrt[2]}},
 C[-F[2, {gt1}], F[2, {gt2}], S[2, {gt3}]] == {{-((IndexSum[Conjugate[ZEL[gt2, j2]]*IndexSum[Conjugate[ZER[gt1, j1]]*Ye[j1, j2], {j1, 3}], {j2, 3}]*ZA[gt3, 1])/Sqrt[2])}, {(IndexSum[IndexSum[Conjugate[Ye[j1, j2]]*ZER[gt2, j1], {j1, 3}]*ZEL[gt1, j2], {j2, 3}]*ZA[gt3, 1])/Sqrt[2]}},
 C[-F[3, {gt1, ct1}], F[3, {gt2, ct2}], S[2, {gt3}]] == {{(IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZUL[gt2, j2]]*IndexSum[Conjugate[ZUR[gt1, j1]]*Yu[j1, j2], {j1, 3}], {j2, 3}]*ZA[gt3, 1])/Sqrt[2]}, {-((IndexDelta[ct1, ct2]*IndexSum[IndexSum[Conjugate[Yu[j1, j2]]*ZUR[gt2, j1], {j1, 3}]*ZUL[gt1, j2], {j2, 3}]*ZA[gt3, 1])/Sqrt[2])}},
 C[-F[5], F[5], S[1, {gt3}]] == {{((-I)*YC*ZH[gt3, 2])/Sqrt[2]}, {((-I)*Conjugate[YC]*ZH[gt3, 2])/Sqrt[2]}},
 C[-F[4, {gt1, ct1}], F[4, {gt2, ct2}], S[1, {gt3}]] == {{(I*IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZDL[gt2, j2]]*IndexSum[Conjugate[ZDR[gt1, j1]]*Yd[j1, j2], {j1, 3}], {j2, 3}]*ZH[gt3, 1])/Sqrt[2]}, {(I*IndexDelta[ct1, ct2]*IndexSum[IndexSum[Conjugate[Yd[j1, j2]]*ZDR[gt2, j1], {j1, 3}]*ZDL[gt1, j2], {j2, 3}]*ZH[gt3, 1])/Sqrt[2]}},
 C[-F[3, {gt1, ct1}], F[4, {gt2, ct2}], -S[3]] == {{I*IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZDL[gt2, j2]]*IndexSum[Conjugate[ZUR[gt1, j1]]*Yu[j1, j2], {j1, 3}], {j2, 3}]}, {(-I)*IndexDelta[ct1, ct2]*IndexSum[IndexSum[Conjugate[Yd[j1, j2]]*ZDR[gt2, j1], {j1, 3}]*ZUL[gt1, j2], {j2, 3}]}},
 C[F[1, {gt1}], F[2, {gt2}], -S[3]] == {{0}, {(-I)*IndexSum[IndexSum[Conjugate[Ye[j1, j2]]*ZER[gt2, j1], {j1, 3}]*UV[gt1, j2], {j2, 3}]}},
 C[-F[2, {gt1}], F[2, {gt2}], S[1, {gt3}]] == {{(I*IndexSum[Conjugate[ZEL[gt2, j2]]*IndexSum[Conjugate[ZER[gt1, j1]]*Ye[j1, j2], {j1, 3}], {j2, 3}]*ZH[gt3, 1])/Sqrt[2]}, {(I*IndexSum[IndexSum[Conjugate[Ye[j1, j2]]*ZER[gt2, j1], {j1, 3}]*ZEL[gt1, j2], {j2, 3}]*ZH[gt3, 1])/Sqrt[2]}},
 C[-F[3, {gt1, ct1}], F[3, {gt2, ct2}], S[1, {gt3}]] == {{(I*IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZUL[gt2, j2]]*IndexSum[Conjugate[ZUR[gt1, j1]]*Yu[j1, j2], {j1, 3}], {j2, 3}]*ZH[gt3, 1])/Sqrt[2]}, {(I*IndexDelta[ct1, ct2]*IndexSum[IndexSum[Conjugate[Yu[j1, j2]]*ZUR[gt2, j1], {j1, 3}]*ZUL[gt1, j2], {j2, 3}]*ZH[gt3, 1])/Sqrt[2]}},
 C[-F[4, {gt1, ct1}], F[3, {gt2, ct2}], S[3]] == {{(-I)*IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZUL[gt2, j2]]*IndexSum[Conjugate[ZDR[gt1, j1]]*Yd[j1, j2], {j1, 3}], {j2, 3}]}, {I*IndexDelta[ct1, ct2]*IndexSum[IndexSum[Conjugate[Yu[j1, j2]]*ZUR[gt2, j1], {j1, 3}]*ZDL[gt1, j2], {j2, 3}]}},
 C[-F[2, {gt1}], F[1, {gt2}], S[3]] == {{(-I)*IndexSum[Conjugate[UV[gt2, j2]]*IndexSum[Conjugate[ZER[gt1, j1]]*Ye[j1, j2], {j1, 3}], {j2, 3}]}, {0}},
 C[-F[5], F[5], V[1]] == {{(-9*I)*CTW*gYB}, {(-10*I)*CTW*gYB}},
 C[-F[5], F[5], V[2]] == {{(9*I)*(CTWp*gYB*STW - gBL*STWp)}, {(10*I)*(CTWp*gYB*STW - gBL*STWp)}},
 C[-F[5], F[5], V[10]] == {{(-9*I)*(CTWp*gBL + gYB*STW*STWp)}, {(-10*I)*(CTWp*gBL + gYB*STW*STWp)}},
 C[-F[4, {gt1, ct1}], F[4, {gt2, ct2}], V[5, {ct3}]] == {{(-I/2)*g3*IndexDelta[gt1, gt2]*Lam[ct3, ct1, ct2]}, {(-I/2)*g3*IndexDelta[gt1, gt2]*Lam[ct3, ct1, ct2]}},
 C[-F[4, {gt1, ct1}], F[4, {gt2, ct2}], V[1]] == {{(-I/6)*(CTW*g1 - 3*g2*STW)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}, {(I/3)*CTW*g1*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}},
 C[-F[4, {gt1, ct1}], F[4, {gt2, ct2}], V[2]] == {{(I/6)*(3*CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}, {(-I/3)*(CTWp*g1*STW - gBY*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}},
 C[-F[4, {gt1, ct1}], F[4, {gt2, ct2}], V[10]] == {{(-I/6)*(CTWp*gBY + (3*CTW*g2 + g1*STW)*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}, {(I/3)*(CTWp*gBY + g1*STW*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}},
 C[-F[3, {gt1, ct1}], F[4, {gt2, ct2}], -V[3]] == {{((-I)*g2*IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZDL[gt2, j1]]*ZUL[gt1, j1], {j1, 3}])/Sqrt[2]}, {0}},
 C[F[1, {gt1}], F[2, {gt2}], -V[3]] == {{((-I)*g2*IndexSum[Conjugate[ZEL[gt2, j1]]*UV[gt1, j1], {j1, 3}])/Sqrt[2]}, {0}},
 C[-F[2, {gt1}], F[2, {gt2}], V[1]] == {{(I/2)*(CTW*g1 + g2*STW)*IndexDelta[gt1, gt2]}, {I*CTW*g1*IndexDelta[gt1, gt2]}},
 C[-F[2, {gt1}], F[2, {gt2}], V[2]] == {{(I/2)*(CTW*CTWp*g2 - CTWp*g1*STW + gBY*STWp)*IndexDelta[gt1, gt2]}, {(-I)*(CTWp*g1*STW - gBY*STWp)*IndexDelta[gt1, gt2]}},
 C[-F[2, {gt1}], F[2, {gt2}], V[10]] == {{(I/2)*(CTWp*gBY + (-(CTW*g2) + g1*STW)*STWp)*IndexDelta[gt1, gt2]}, {I*(CTWp*gBY + g1*STW*STWp)*IndexDelta[gt1, gt2]}},
 C[-F[3, {gt1, ct1}], F[3, {gt2, ct2}], V[5, {ct3}]] == {{(-I/2)*g3*IndexDelta[gt1, gt2]*Lam[ct3, ct1, ct2]}, {(-I/2)*g3*IndexDelta[gt1, gt2]*Lam[ct3, ct1, ct2]}},
 C[-F[3, {gt1, ct1}], F[3, {gt2, ct2}], V[1]] == {{(-I/6)*(CTW*g1 + 3*g2*STW)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}, {((-2*I)/3)*CTW*g1*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}},
 C[-F[4, {gt1, ct1}], F[3, {gt2, ct2}], V[3]] == {{((-I)*g2*IndexDelta[ct1, ct2]*IndexSum[Conjugate[ZUL[gt2, j1]]*ZDL[gt1, j1], {j1, 3}])/Sqrt[2]}, {0}},
 C[-F[3, {gt1, ct1}], F[3, {gt2, ct2}], V[2]] == {{(-I/6)*(3*CTW*CTWp*g2 - CTWp*g1*STW + gBY*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}, {((2*I)/3)*(CTWp*g1*STW - gBY*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}},
 C[-F[3, {gt1, ct1}], F[3, {gt2, ct2}], V[10]] == {{(-I/6)*(CTWp*gBY + (-3*CTW*g2 + g1*STW)*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}, {((-2*I)/3)*(CTWp*gBY + g1*STW*STWp)*IndexDelta[ct1, ct2]*IndexDelta[gt1, gt2]}},
 C[F[1, {gt1}], F[1, {gt2}], V[1]] == {{(I/2)*((CTW*g1 - g2*STW)*IndexSum[Conjugate[UV[gt2, j1]]*UV[gt1, j1], {j1, 3}] + 2*CTW*gYB*IndexSum[Conjugate[UV[gt2, 3 + j1]]*UV[gt1, 3 + j1], {j1, 2}])}, {(-I/2)*((CTW*g1 - g2*STW)*IndexSum[Conjugate[UV[gt1, j1]]*UV[gt2, j1], {j1, 3}] + 2*CTW*gYB*IndexSum[Conjugate[UV[gt1, 3 + j1]]*UV[gt2, 3 + j1], {j1, 2}])}},
 C[F[1, {gt1}], F[1, {gt2}], V[2]] == {{(-I/2)*((CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*IndexSum[Conjugate[UV[gt2, j1]]*UV[gt1, j1], {j1, 3}] + 2*(CTWp*gYB*STW - gBL*STWp)*IndexSum[Conjugate[UV[gt2, 3 + j1]]*UV[gt1, 3 + j1], {j1, 2}])}, {(I/2)*((CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*IndexSum[Conjugate[UV[gt1, j1]]*UV[gt2, j1], {j1, 3}] + 2*(CTWp*gYB*STW - gBL*STWp)*IndexSum[Conjugate[UV[gt1, 3 + j1]]*UV[gt2, 3 + j1], {j1, 2}])}},
 C[F[1, {gt1}], F[1, {gt2}], V[10]] == {{(I/2)*((CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*IndexSum[Conjugate[UV[gt2, j1]]*UV[gt1, j1], {j1, 3}] + 2*(CTWp*gBL + gYB*STW*STWp)*IndexSum[Conjugate[UV[gt2, 3 + j1]]*UV[gt1, 3 + j1], {j1, 2}])}, {(-I/2)*((CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*IndexSum[Conjugate[UV[gt1, j1]]*UV[gt2, j1], {j1, 3}] + 2*(CTWp*gBL + gYB*STW*STWp)*IndexSum[Conjugate[UV[gt1, 3 + j1]]*UV[gt2, 3 + j1], {j1, 2}])}},
 C[-F[2, {gt1}], F[1, {gt2}], V[3]] == {{((-I)*g2*IndexSum[Conjugate[UV[gt2, j1]]*ZEL[gt1, j1], {j1, 3}])/Sqrt[2]}, {0}},
 C[-F[6, {gt1}], F[6, {gt2}], V[1]] == {{(-6*I)*CTW*gYB*IndexDelta[gt1, gt2]}, {(5*I)*CTW*gYB*IndexDelta[gt1, gt2]}},
 C[-F[6, {gt1}], F[6, {gt2}], V[2]] == {{(6*I)*(CTWp*gYB*STW - gBL*STWp)*IndexDelta[gt1, gt2]}, {(-5*I)*(CTWp*gYB*STW - gBL*STWp)*IndexDelta[gt1, gt2]}},
 C[-F[6, {gt1}], F[6, {gt2}], V[10]] == {{(-6*I)*(CTWp*gBL + gYB*STW*STWp)*IndexDelta[gt1, gt2]}, {(5*I)*(CTWp*gBL + gYB*STW*STWp)*IndexDelta[gt1, gt2]}},
 C[S[2, {gt1}], S[2, {gt2}], S[1, {gt3}]] == {{I*(-(ZA[gt1, 2]*ZA[gt2, 2]*(lam3*v*ZH[gt3, 1] + lam2*vX*ZH[gt3, 2])) - ZA[gt1, 1]*ZA[gt2, 1]*(lam1*v*ZH[gt3, 1] + lam3*vX*ZH[gt3, 2]))}},
 C[S[1, {gt1}], S[1, {gt2}], S[1, {gt3}]] == {{I*(-(ZH[gt1, 2]*(lam3*ZH[gt2, 1]*(vX*ZH[gt3, 1] + v*ZH[gt3, 2]) + ZH[gt2, 2]*(lam3*v*ZH[gt3, 1] + 3*lam2*vX*ZH[gt3, 2]))) - ZH[gt1, 1]*(lam3*ZH[gt2, 2]*(vX*ZH[gt3, 1] + v*ZH[gt3, 2]) + ZH[gt2, 1]*(3*lam1*v*ZH[gt3, 1] + lam3*vX*ZH[gt3, 2])))}},
 C[S[1, {gt1}], S[3], -S[3]] == {{I*(-(lam1*v*ZH[gt1, 1]) - lam3*vX*ZH[gt1, 2])}},
 C[S[2, {gt1}], S[1, {gt2}], V[1]] == {{(-((CTW*g1 - g2*STW)*ZA[gt1, 1]*ZH[gt2, 1]) - 2*CTW*gYB*ZA[gt1, 2]*ZH[gt2, 2])/2}},
 C[S[2, {gt1}], S[1, {gt2}], V[2]] == {{((CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*ZA[gt1, 1]*ZH[gt2, 1] + 2*(CTWp*gYB*STW - gBL*STWp)*ZA[gt1, 2]*ZH[gt2, 2])/2}},
 C[S[2, {gt1}], S[1, {gt2}], V[10]] == {{(-((CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*ZA[gt1, 1]*ZH[gt2, 1]) - 2*(CTWp*gBL + gYB*STW*STWp)*ZA[gt1, 2]*ZH[gt2, 2])/2}},
 C[S[2, {gt1}], S[3], -V[3]] == {{(g2*ZA[gt1, 1])/2}},
 C[S[2, {gt1}], -S[3], V[3]] == {{(g2*ZA[gt1, 1])/2}},
 C[S[1, {gt1}], S[3], -V[3]] == {{(I/2)*g2*ZH[gt1, 1]}},
 C[S[1, {gt1}], -S[3], V[3]] == {{(-I/2)*g2*ZH[gt1, 1]}},
 C[S[3], -S[3], V[1]] == {{(I/2)*(CTW*g1 + g2*STW)}},
 C[S[3], -S[3], V[2]] == {{(I/2)*(CTW*CTWp*g2 - CTWp*g1*STW + gBY*STWp)}},
 C[S[3], -S[3], V[10]] == {{(I/2)*(CTWp*gBY + (-(CTW*g2) + g1*STW)*STWp)}},
 C[S[1, {gt1}], V[1], V[2]] == {{(I/2)*(-((CTW*g1 - g2*STW)*(CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*v*ZH[gt1, 1]) - 4*CTW*gYB*(CTWp*gYB*STW - gBL*STWp)*vX*ZH[gt1, 2])}},
 C[S[1, {gt1}], V[1], V[10]] == {{(I/2)*((CTW*g1 - g2*STW)*(CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*v*ZH[gt1, 1] + 4*CTW*gYB*(CTWp*gBL + gYB*STW*STWp)*vX*ZH[gt1, 2])}},
 C[S[1, {gt1}], -V[3], V[3]] == {{(I/2)*g2^2*v*ZH[gt1, 1]}},
 C[S[1, {gt1}], V[2], V[2]] == {{(I/2)*((CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)^2*v*ZH[gt1, 1] + 4*(CTWp*gYB*STW - gBL*STWp)^2*vX*ZH[gt1, 2])}},
 C[S[1, {gt1}], V[2], V[10]] == {{(I/2)*(-((CTWp^2*g1*gBY*STW + CTW^2*CTWp*g2^2*STWp + CTWp*(-gBY^2 + g1^2*STW^2)*STWp - g1*gBY*STW*STWp^2 + CTW*g2*(CTWp^2*gBY + g1*S2TWp*STW - gBY*STWp^2))*v*ZH[gt1, 1]) - 4*(CTWp^2*gBL*gYB*STW + CTWp*(-gBL^2 + gYB^2*STW^2)*STWp - gBL*gYB*STW*STWp^2)*vX*ZH[gt1, 2])}},
 C[S[1, {gt1}], V[10], V[10]] == {{(I/2)*((CTWp*gBY + (CTW*g2 + g1*STW)*STWp)^2*v*ZH[gt1, 1] + 4*(CTWp*gBL + gYB*STW*STWp)^2*vX*ZH[gt1, 2])}},
 C[S[3], -V[3], V[1]] == {{(-I/2)*CTW*g1*g2*v}},
 C[S[3], -V[3], V[2]] == {{(I/2)*g2*(CTWp*g1*STW - gBY*STWp)*v}},
 C[S[3], -V[3], V[10]] == {{(-I/2)*g2*(CTWp*gBY + g1*STW*STWp)*v}},
 C[-S[3], V[1], V[3]] == {{(-I/2)*CTW*g1*g2*v}},
 C[-S[3], V[3], V[2]] == {{(I/2)*g2*(CTWp*g1*STW - gBY*STWp)*v}},
 C[-S[3], V[3], V[10]] == {{(-I/2)*g2*(CTWp*gBY + g1*STW*STWp)*v}},
 C[S[2, {gt1}], S[2, {gt2}], S[2, {gt3}], S[2, {gt4}]] == {{I*(-(ZA[gt1, 2]*(lam3*ZA[gt2, 1]*(ZA[gt3, 2]*ZA[gt4, 1] + ZA[gt3, 1]*ZA[gt4, 2]) + ZA[gt2, 2]*(lam3*ZA[gt3, 1]*ZA[gt4, 1] + 3*lam2*ZA[gt3, 2]*ZA[gt4, 2]))) - ZA[gt1, 1]*(lam3*ZA[gt2, 2]*(ZA[gt3, 2]*ZA[gt4, 1] + ZA[gt3, 1]*ZA[gt4, 2]) + ZA[gt2, 1]*(3*lam1*ZA[gt3, 1]*ZA[gt4, 1] + lam3*ZA[gt3, 2]*ZA[gt4, 2])))}},
 C[S[2, {gt1}], S[2, {gt2}], S[1, {gt3}], S[1, {gt4}]] == {{I*(-(ZA[gt1, 2]*ZA[gt2, 2]*(lam3*ZH[gt3, 1]*ZH[gt4, 1] + lam2*ZH[gt3, 2]*ZH[gt4, 2])) - ZA[gt1, 1]*ZA[gt2, 1]*(lam1*ZH[gt3, 1]*ZH[gt4, 1] + lam3*ZH[gt3, 2]*ZH[gt4, 2]))}},
 C[S[2, {gt1}], S[2, {gt2}], S[3], -S[3]] == {{I*(-(lam1*ZA[gt1, 1]*ZA[gt2, 1]) - lam3*ZA[gt1, 2]*ZA[gt2, 2])}},
 C[S[1, {gt1}], S[1, {gt2}], S[1, {gt3}], S[1, {gt4}]] == {{I*(-(ZH[gt1, 2]*(lam3*ZH[gt2, 1]*(ZH[gt3, 2]*ZH[gt4, 1] + ZH[gt3, 1]*ZH[gt4, 2]) + ZH[gt2, 2]*(lam3*ZH[gt3, 1]*ZH[gt4, 1] + 3*lam2*ZH[gt3, 2]*ZH[gt4, 2]))) - ZH[gt1, 1]*(lam3*ZH[gt2, 2]*(ZH[gt3, 2]*ZH[gt4, 1] + ZH[gt3, 1]*ZH[gt4, 2]) + ZH[gt2, 1]*(3*lam1*ZH[gt3, 1]*ZH[gt4, 1] + lam3*ZH[gt3, 2]*ZH[gt4, 2])))}},
 C[S[1, {gt1}], S[1, {gt2}], S[3], -S[3]] == {{I*(-(lam1*ZH[gt1, 1]*ZH[gt2, 1]) - lam3*ZH[gt1, 2]*ZH[gt2, 2])}},
 C[S[3], S[3], -S[3], -S[3]] == {{(-2*I)*lam1}},
 C[V[5, {ct1}], V[5, {ct2}], V[5, {ct3}]] == {{g3*fSU3[ct1, ct2, ct3]}},
 C[-V[3], V[1], V[3]] == {{I*g2*STW}},
 C[-V[3], V[3], V[2]] == {{(-I)*CTW*CTWp*g2}},
 C[-V[3], V[3], V[10]] == {{I*CTW*g2*STWp}},
 C[S[2, {gt3}], -U[3], U[3]] == {{(g2^2*v*GaugeXi[Wm]*ZA[gt3, 1])/4}},
 C[S[2, {gt3}], -U[4], U[4]] == {{-(g2^2*v*GaugeXi[Wm]*ZA[gt3, 1])/4}},
 C[S[1, {gt3}], -U[2], U[1]] == {{(I/4)*GaugeXi[Z]*((CTW*g1 - g2*STW)*(CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*v*ZH[gt3, 1] + 4*CTW*gYB*(CTWp*gYB*STW - gBL*STWp)*vX*ZH[gt3, 2])}},
 C[S[1, {gt3}], -U[10], U[1]] == {{(-I/4)*GaugeXi[Zp]*((CTW*g1 - g2*STW)*(CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*v*ZH[gt3, 1] + 4*CTW*gYB*(CTWp*gBL + gYB*STW*STWp)*vX*ZH[gt3, 2])}},
 C[S[3], -U[3], U[1]] == {{(I/4)*g2*(CTW*g1 + g2*STW)*v*GaugeXi[Wm]}},
 C[-S[3], -U[4], U[1]] == {{(I/4)*g2*(CTW*g1 + g2*STW)*v*GaugeXi[Wm]}},
 C[S[1, {gt3}], -U[3], U[3]] == {{(-I/4)*g2^2*v*GaugeXi[Wm]*ZH[gt3, 1]}},
 C[-S[3], -U[2], U[3]] == {{(-I/4)*g2*(CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*v*GaugeXi[Z]}},
 C[-S[3], -U[10], U[3]] == {{(I/4)*g2*(CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*v*GaugeXi[Zp]}},
 C[S[1, {gt3}], -U[4], U[4]] == {{(-I/4)*g2^2*v*GaugeXi[Wm]*ZH[gt3, 1]}},
 C[S[3], -U[2], U[4]] == {{(-I/4)*g2*(CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)*v*GaugeXi[Z]}},
 C[S[3], -U[10], U[4]] == {{(I/4)*g2*(CTWp*gBY + (CTW*g2 + g1*STW)*STWp)*v*GaugeXi[Zp]}},
 C[S[1, {gt3}], -U[2], U[2]] == {{(-I/4)*GaugeXi[Z]*((CTW*CTWp*g2 + CTWp*g1*STW - gBY*STWp)^2*v*ZH[gt3, 1] + 4*(CTWp*gYB*STW - gBL*STWp)^2*vX*ZH[gt3, 2])}},
 C[S[1, {gt3}], -U[10], U[2]] == {{(I/4)*GaugeXi[Zp]*((CTWp^2*g1*gBY*STW + CTW^2*CTWp*g2^2*STWp + CTWp*(-gBY^2 + g1^2*STW^2)*STWp - g1*gBY*STW*STWp^2 + CTW*g2*(CTWp^2*gBY + g1*S2TWp*STW - gBY*STWp^2))*v*ZH[gt3, 1] + 4*(CTWp^2*gBL*gYB*STW + CTWp*(-gBL^2 + gYB^2*STW^2)*STWp - gBL*gYB*STW*STWp^2)*vX*ZH[gt3, 2])}},
 C[S[3], -U[3], U[2]] == {{(I/4)*g2*(CTW*CTWp*g2 - CTWp*g1*STW + gBY*STWp)*v*GaugeXi[Wm]}},
 C[-S[3], -U[4], U[2]] == {{(I/4)*g2*(CTW*CTWp*g2 - CTWp*g1*STW + gBY*STWp)*v*GaugeXi[Wm]}},
 C[S[1, {gt3}], -U[2], U[10]] == {{(I/4)*GaugeXi[Z]*((CTWp^2*g1*gBY*STW + CTW^2*CTWp*g2^2*STWp + CTWp*(-gBY^2 + g1^2*STW^2)*STWp - g1*gBY*STW*STWp^2 + CTW*g2*(CTWp^2*gBY + g1*S2TWp*STW - gBY*STWp^2))*v*ZH[gt3, 1] + 4*(CTWp^2*gBL*gYB*STW + CTWp*(-gBL^2 + gYB^2*STW^2)*STWp - gBL*gYB*STW*STWp^2)*vX*ZH[gt3, 2])}},
 C[S[1, {gt3}], -U[10], U[10]] == {{(-I/4)*GaugeXi[Zp]*((CTWp*gBY + (CTW*g2 + g1*STW)*STWp)^2*v*ZH[gt3, 1] + 4*(CTWp*gBL + gYB*STW*STWp)^2*vX*ZH[gt3, 2])}},
 C[S[3], -U[3], U[10]] == {{(I/4)*g2*(CTWp*gBY + (-(CTW*g2) + g1*STW)*STWp)*v*GaugeXi[Wm]}},
 C[-S[3], -U[4], U[10]] == {{(I/4)*g2*(CTWp*gBY + (-(CTW*g2) + g1*STW)*STWp)*v*GaugeXi[Wm]}},
 C[-U[5, {ct1}], U[5, {ct2}], V[5, {ct3}]] == {{g3*fSU3[ct1, ct2, ct3]}, {0}},
 C[-U[3], U[1], V[3]] == {{I*g2*STW}, {0}},
 C[-U[4], U[1], -V[3]] == {{(-I)*g2*STW}, {0}},
 C[-U[3], U[3], V[1]] == {{(-I)*g2*STW}, {0}},
 C[-U[3], U[3], V[2]] == {{(-I)*CTW*CTWp*g2}, {0}},
 C[-U[3], U[3], V[10]] == {{I*CTW*g2*STWp}, {0}},
 C[-U[1], U[3], -V[3]] == {{I*g2*STW}, {0}},
 C[-U[2], U[3], -V[3]] == {{I*CTW*CTWp*g2}, {0}},
 C[-U[10], U[3], -V[3]] == {{(-I)*CTW*g2*STWp}, {0}},
 C[-U[4], U[4], V[1]] == {{I*g2*STW}, {0}},
 C[-U[1], U[4], V[3]] == {{(-I)*g2*STW}, {0}},
 C[-U[2], U[4], V[3]] == {{(-I)*CTW*CTWp*g2}, {0}},
 C[-U[10], U[4], V[3]] == {{I*CTW*g2*STWp}, {0}},
 C[-U[4], U[4], V[2]] == {{I*CTW*CTWp*g2}, {0}},
 C[-U[4], U[4], V[10]] == {{(-I)*CTW*g2*STWp}, {0}},
 C[-U[3], U[2], V[3]] == {{I*CTW*CTWp*g2}, {0}},
 C[-U[4], U[2], -V[3]] == {{(-I)*CTW*CTWp*g2}, {0}},
 C[-U[3], U[10], V[3]] == {{(-I)*CTW*g2*STWp}, {0}},
 C[-U[4], U[10], -V[3]] == {{I*CTW*g2*STWp}, {0}}
 }

 
Conjugate[g1] ^= g1; 
Conjugate[g2] ^= g2; 
Conjugate[g3] ^= g3; 
Conjugate[vX] ^= vX; 
Conjugate[ZZ[a___]] ^= ZZ[a]; 
Conjugate[ZH[a___]] ^= ZH[a]; 
Conjugate[ZA[a___]] ^= ZA[a]; 
Conjugate[aEWinv] ^= aEWinv; 
Conjugate[Gf] ^= Gf; 
