OnlyLowEnergySPheno = True;


MINPAR={{1, Lambda1INPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        {4, Lambda4INPUT},
        {5, Lambda5INPUT},
        {6, Lambda6INPUT},
        {7, Lambda7INPUT},
        {8, Lambda8INPUT},
        {9, Lambda9INPUT},
        {10, Lambda10INPUT},
        {11, Lambda11INPUT},
        {12, Lambda12INPUT},
        {13, Lambda13INPUT},
        {14, Lambda14INPUT},
        {15, Lambda15INPUT},
        {16, Lambda16INPUT},
        {17, Lambda17INPUT},
        {18, Lambda18INPUT},
        {19, Lambda19INPUT},
        {20, g1pINPUT},
        {21, g1p1INPUT},
        {22, g11pINPUT},
        {23, mEt2Input},
        {24, mK2Input},
        {25, MR2input},
        {26, MS2input},
        {27, lcINPUT},
        {28, lc2INPUT},
        {29, LamSHIN},
        {30, LamSIN},
        {31, lqINPUT},
        {32, yxinput},
        {33, ycinput},
        {34, vXinput}
        };

ParametersToSolveTadpoles = {MuP,mu2};

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
 {g1p,g1pINPUT},
 {g11p,g11pINPUT},
 {g1p1,g1p1INPUT},
 {L1, Lambda1INPUT},
 {L2, Lambda2INPUT},
 {L3, Lambda3INPUT},
 {L4, Lambda4INPUT},
 {L5, Lambda5INPUT},
 {L6, Lambda6INPUT},
 {L7, Lambda7INPUT},
 {L8, Lambda8INPUT},
 {L9, Lambda9INPUT},
 {L10, Lambda10INPUT},
 {L11, Lambda11INPUT},
 {L12, Lambda12INPUT},
 {L13, Lambda13INPUT},
 {L14, Lambda14INPUT},
 {L15, Lambda15INPUT},
 {L16, Lambda16INPUT},
 {L17, Lambda17INPUT},
 {L18, Lambda18INPUT},
 {L19, Lambda19INPUT},
 {mEt2, mEt2Input},
 {mK2, mK2Input},
 {MR2, MR2input},
 {MS2, MS2input},
 {lc, lcINPUT},
 {lc2, lc2INPUT},
 {LamSH, LamSHIN},
 {LamS, LamSIN},
 {lq, lqINPUT},
 {yx, yxinput},
 {yc, ycinput},
 {y1, LHInput[y1]},
 {y2, LHInput[y2]},
 {y3, LHInput[y3]},
 {y4, LHInput[y4]},
 {vX, vXinput}
};

AddTreeLevelUnitarityLimits=True;


ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp, Chi, Xi, ns, nt, etm, kpm, etI, kpI};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};
