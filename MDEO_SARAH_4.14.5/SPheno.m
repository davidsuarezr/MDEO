OnlyLowEnergySPheno = True;


MINPAR={  {1,lambda1Input},
  {2,lambda2Input},
  {3,lambda3Input},
  {4,lambda4Input},
  {5,lambda5Input},
  {6,lambda6Input},
  {7,lambda7Input},
  {8,lambda8Input},
  {9,lambda9Input},
  {10,lambda10Input},
  {11,lambda11Input},
  {20, g1pINPUT},
  {21, g1p1INPUT},
  {22, g11pINPUT},
  {23, mEt2Input},
  {24, MS2Input},
  {30, vXinput},
  {31, Ycinput},
  {32, muCinput}
  };

ParametersToSolveTadpoles = {MuP,mH2};

DEFINITION[MatchingConditions]= {
 {Ye, YeSM},
 {Yd, YdSM},
 {Yu, YuSM},
 {g1, g1SM},
 {g2, g2SM},
 {g3, g3SM},
 {vH, vSM}
 };

BoundaryLowScaleInput={
 {g1p, g1pINPUT},
 {g11p, g11pINPUT},
 {g1p1, g1p1INPUT},
 {lambda1,lambda1Input},
 {lambda2,lambda2Input},
 {lambda3,lambda3Input},
 {lambda4,lambda4Input},
 {lambda5,lambda5Input},
 {lambda6,lambda6Input},
 {lambda7,lambda7Input},
 {lambda8,lambda8Input},
 {lambda9,lambda9Input},
 {lambda10,lambda10Input},
 {lambda11,lambda11Input},
 {vX, vXinput},
 {Yc, Ycinput},
 {muC, muCinput},
 {mEt2,mEt2Input},
 {MS2,MS2Input},
 {Yx, LHInput[Yx]},
 {YnL, LHInput[YnL]},
 {YnR, LHInput[YnR]}
};

AddTreeLevelUnitarityLimits=True;
FlagLoopContributions = True;

ListDecayParticles = {Fu,Fe,Fd, VZ, VWm, hh, VZp, Chi, Xi, etI, etp, ns};
ListDecayParticles3B = {{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};
