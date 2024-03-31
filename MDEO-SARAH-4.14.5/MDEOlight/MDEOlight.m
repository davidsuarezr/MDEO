Off[General::spell]

Model`Name = "MDEOlight";
Model`NameLaTeX ="Mutli Component Dirac Effective operator";
Model`Authors = "David Suarez and Andres Rivera";
Model`Date = "2024-25-01";
(*2023-01-07 FeynArts numbers: Andres*)
(*2023-01-07 Se quita el \\chi *)
(*2024-01-25 MDEO light version *)

(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

Global[[1]] = {Z[2], Z2};
Global[[2]] = {Z[2], Z2P};

(* Gauge Superfields *)

Gauge[[1]]={B,   U[1], hypercharge,  g1, False, 1, 1};
Gauge[[2]]={WB, SU[2], left,         g2,  True, 1, 1};
Gauge[[3]]={G,  SU[3], color,        g3, False, 1, 1};
Gauge[[4]]={Bp,  U[1], BminusL,     g1p, False, 1, 1};


(* Chiral Superfields *)

FermionFields[[1]] = { q, 3, {uL, dL},   1/6, 2,  3,  0,  1,  1};
FermionFields[[2]] = { l, 3, {vL, eL},  -1/2, 2,  1,  0,  1,  1};
FermionFields[[3]] = { d, 3, conj[dR],   1/3, 1, -3,  0,  1,  1};
FermionFields[[4]] = { u, 3, conj[uR],  -2/3, 1, -3,  0,  1,  1};
FermionFields[[5]] = { e, 3, conj[eR],     1, 1,  1,  0,  1,  1};
FermionFields[[6]] = { v, 3, conj[vR],     0, 1,  1, -9,  1,  1};
FermionFields[[7]] = {CL, 1,       cl,     0, 1,  1,  4, -1,  1};
FermionFields[[8]] = {CR, 1, conj[cr],     0, 1,  1,  5, -1,  1};
FermionFields[[9]] = {FxL, 2,       xl,    0, 1,  1, 10,  1, -1};
FermionFields[[10]] = {FxR, 2, conj[xr],   0, 1,  1, -1,  1, -1};

ScalarFields[[1]] =  {H, 1,   {H0, Hm}, -1/2, 2, 1,  0, 1,  1};
ScalarFields[[2]] = {Et, 1, {et0, etm}, -1/2, 2, 1, -1, 1, -1};
ScalarFields[[3]] = {bi, 1,        BiD,    0, 1, 1, -9, 1,  1};
ScalarFields[[4]] =  {S, 1,         ss,    0, 1, 1, -1, 1, -1};

(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][Additional]= {
    {LagFer   ,      {AddHC->True}},
    {LagSca   ,      {AddHC->True}},
    {LagH     ,      {AddHC->False}},
    {LagEt    ,      {AddHC->False}},
    {LagHEt   ,      {AddHC->False}},
    {Lagbi    ,      {AddHC->False}},
    {LagbiH   ,      {AddHC->False}},
    {LagbiEt  ,      {AddHC->False}},
    {LagS     ,      {AddHC->False}},
    {LagSH    ,      {AddHC->False}},
    {LagSbi   ,      {AddHC->False}},
    {LagSEt  ,      {AddHC->False}}
};

LagFer   = Yd H.d.q + Ye H.e.l + Yu conj[H].u.q + YnL conj[Et].FxR.l + YnR S.FxL.v + Yc bi.CL.CR + Yx bi.FxL.FxR;

LagSca   = muC conj[H].Et.conj[S];

LagH     = -(- mH2 conj[H].H + 1/2 lambda1 conj[H].H.conj[H].H );

LagEt    = -(+ mEt2 conj[Et].Et + 1/2 lambda2 conj[Et].Et.conj[Et].Et );

LagHEt   = -(+ lambda3 conj[H].H.conj[Et].Et + lambda4 conj[H].Et.conj[Et].H );

Lagbi = -(- MuP conj[bi].bi + 1/2 lambda5 conj[bi].bi.conj[bi].bi);

LagbiH = - (+ lambda6 conj[bi].bi.conj[H].H );

LagbiEt= - (+ lambda7 conj[bi].bi.conj[Et].Et );

LagS    = -(+ MS2 conj[S].S + 1/2 lambda8 conj[S].S.conj[S].S );

LagSH    = -(+ lambda9 conj[S].S.conj[H].H );

LagSbi    = -(+ lambda10 conj[S].S.conj[bi].bi );

LagSEt    = -(+ lambda11 conj[S].S.conj[Et].Et);

(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{
  {{VB,VWB[3],VBp},{VP,VZ,VZp},ZZ},
  {{VWB[1],VWB[2]},{VWm,conj[VWm]},ZW}
};

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]=
{    {H0,  {vH, 1/Sqrt[2]}, {sigmaH, \[ImaginaryI]/Sqrt[2]}, {phiH, 1/Sqrt[2]}},
     {et0, {0, 0}, {etI, \[ImaginaryI]/Sqrt[2]}, {etR, 1/Sqrt[2]}},
     {BiD,{vX, 1/Sqrt[2]}, {sigmaB, \[ImaginaryI]/Sqrt[2]},{phiB, 1/Sqrt[2]}}
     };

DEFINITION[EWSB][MatterSector]=
    {
     {{phiH,phiB},{hh,ZH}},
     {{sigmaH,sigmaB},{Ah,ZA}},
     {{etR,  conj[ss]},  {ns, ZN}},
     {{{xl}, {conj[xr]}}, {{fl,ZL}, {fr,ZR}}},       
     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},
     {{{vL}, {conj[vR]}}, {{VL,XL}, {VR,XR}}}
};

(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  VL, conj[VR]},
 Chi ->{ cl, cr},
 Xi ->{  fl, conj[fr]}};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};


