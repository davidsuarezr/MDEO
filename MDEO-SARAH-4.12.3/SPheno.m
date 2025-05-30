OnlyLowEnergySPheno = True;


MINPAR={{1, Lambda1INPUT},
        {2, Lambda2INPUT},
        {3, Lambda3INPUT},
        {10, g1pINPUT},
        {11, g1p1INPUT},
        {12, g11pINPUT},
        {20, vXinput},
        {21, ycinput}
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
 {vX,vXinput},
 {yc,ycinput},
 {yx, LHInput[yx]}
};

AddTreeLevelUnitarityLimits=True;
FlagLoopContributions = True;

ListDecayParticles = {Fu,Fe,Fd,Fv, VZ, VWm, hh, VZp, Chi, Xi};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};
