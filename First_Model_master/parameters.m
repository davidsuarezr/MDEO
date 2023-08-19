ParameterDefinitions = { 

{g1,        { Description -> "Hypercharge-Coupling"}},

{g11p,        {Description -> "Mixed Gauge Coupling 2"}},
{g1p1,        {Description -> "Mixed Gauge Coupling 1"}},
{g1p,       {   Description -> "B-L-Coupling"}},

{MZp,       {   Description -> "Z' mass"}},


{g2,        { Description -> "Left-Coupling"}},
{g3,        { Description -> "Strong-Coupling"}},    
{AlphaS,    {Description -> "Alpha Strong"}},	
{e,         { Description -> "electric charge"}},
{Gf,        { Description -> "Fermi's constant"}},
{aEWinv,    { Description -> "inverse weak coupling constant at mZ"}},
 

{Yu,        { Description -> "Up-Yukawa-Coupling",
			 DependenceNum ->  Sqrt[2]/vH* {{Mass[Fu,1],0,0},
             									{0, Mass[Fu,2],0},
             									{0, 0, Mass[Fu,3]}}}}, 
             									
{Yd,        { Description -> "Down-Yukawa-Coupling",
			  DependenceNum ->  Sqrt[2]/vH* {{Mass[Fd,1],0,0},
             									{0, Mass[Fd,2],0},
             									{0, 0, Mass[Fd,3]}}}},
             									
{Ye,        { Description -> "Lepton-Yukawa-Coupling",
			  DependenceNum ->  Sqrt[2]/vH* {{Mass[Fe,1],0,0},
             									{0, Mass[Fe,2],0},
             									{0, 0, Mass[Fe,3]}}}}, 
                                                                            
                                                                           
{Mu,         { Description -> "SM Mu Parameter"}},                                        
{\[Lambda],  { Description -> "SM Higgs Selfcouplings"}},
{vH,          { Description -> "EW-VEV",
               DependenceSPheno -> None }},

{ThetaW,    { Description -> "Weinberg-Angle"}},
{ThetaWp,  { Description -> "Theta'", DependenceNum -> None  }},

{ZZ, {Description ->   "Photon-Z-Z' Mixing Matrix"}},
{ZW, {Description -> "W Mixing Matrix"}},

{L1, {OutputName -> lam1,
      LaTeX -> "\\lambda_1",
      LesHouches -> {BL,1}}},

{L2, {OutputName -> lam2,
      LaTeX -> "\\lambda_2",
      LesHouches -> {BL,2}}},

{L3, {OutputName -> lam3,
      LaTeX -> "\\lambda_3",
      LesHouches -> {BL,3}}},

{L4, {OutputName -> lam4,
      LaTeX -> "\\lambda_4",
      LesHouches -> {BL,4}}},

{L5, {OutputName -> lam5,
      LaTeX -> "\\lambda_5",
      LesHouches -> {BL,5}}},

{L6, {OutputName -> lam6,
      LaTeX -> "\\lambda_6",
      LesHouches -> {BL,6}}},

{L7, {OutputName -> lam7,
      LaTeX -> "\\lambda_7",
      LesHouches -> {BL,7}}},

{L8, {OutputName -> lam8,
      LaTeX -> "\\lambda_8",
      LesHouches -> {BL,8}}},

{L9, {OutputName -> lam9,
      LaTeX -> "\\lambda_9",
      LesHouches -> {BL,9}}},

{L10, {OutputName -> lam10,
      LaTeX -> "\\lambda_{10}",
      LesHouches -> {BL,10}}},

{L11, {OutputName -> lam11,
      LaTeX -> "\\lambda_{11}",
      LesHouches -> {BL,11}}},

{L12, {OutputName -> lam12,
      LaTeX -> "\\lambda_{12}",
      LesHouches -> {BL,12}}},

{L13, {OutputName -> lam13,
      LaTeX -> "\\lambda_{13}      ",
      LesHouches -> {BL,13}}},

{L14, {OutputName -> lam14,
      LaTeX -> "\\lambda_{14}",
      LesHouches -> {BL,14}}},

{L15, {OutputName -> lam15,
      LaTeX -> "\\lambda_{15}",
      LesHouches -> {BL,15}}},

{L16, {OutputName -> lam16,
      LaTeX -> "\\lambda_{16}",
      LesHouches -> {BL,16}}},

{L17, {OutputName -> lam17,
      LaTeX -> "\\lambda_{17}",
      LesHouches -> {BL,17}}},

{L18, {OutputName -> lam18,
      LaTeX -> "\\lambda_{19}",
      LesHouches -> {BL,19}}},

{L19, {OutputName -> lam19,
      LaTeX -> "\\lambda_{19}",
      LesHouches -> {BL,19}}},

{MuP, {OutputName -> MUP,
      LaTeX -> "\\mu'",
      LesHouches -> {BL,20}}},

{mu2, {OutputName -> mu,
      LaTeX -> "\\mu_2",
      LesHouches -> {BL,21}}},

{mH2, {OutputName -> mH2,
      LaTeX -> "\\m^2_H",
      LesHouches -> {BL,22}}},

{mxi2, {OutputName -> mX2,
      LaTeX -> "\\m^2_{\\xi}",
      LesHouches -> {BL,23}}},

{mchi2, {OutputName -> MC2,
      LaTeX -> "\\m^2_\\chi",
      LesHouches -> {BL,24}}},

{MUS, {OutputName -> muS,
      LaTeX -> "\\mu_s",
      LesHouches -> {BL,25}}},

{mK2, {LaTeX -> "m_{\\kappa}^2",
	LesHouches -> {BL,26},
	OutputName-> MK2 }},

{MR2, {LaTeX -> "M_R^2",
       LesHouches -> {BL,27},
	   OutputName-> MR2}},

{mEt2, {LaTeX -> "m_{\\eta}^2",
	LesHouches -> {BL,28},
	OutputName-> mEt2 }},

{MS2, {LaTeX -> "M_S^2",
       LesHouches -> {BL,29},
	   OutputName-> MS2}},

{lc,     {OutputName ->"LC",
             LaTeX -> "\\lambda_C",
             LesHouches -> {BL,30}}},

{lc2,     {OutputName ->"LC2",
             LaTeX -> "\\lambda_{C2}",
             LesHouches -> {BL,31}}},

{LamSH,     {OutputName ->"LSH",
             LaTeX -> "\\lambda_{SH}",
             LesHouches -> {BL,32}}},

{LamS,     {OutputName ->"LS",
             LaTeX -> "\\lambda_S",
             LesHouches -> {BL,33}}},

{lq,     {OutputName ->"LQ",
             LaTeX -> "\\lambda_Q",
             LesHouches -> {BL,34}}},

{yx, {OutputName -> YX,
      LaTeX -> "Y_x",
      LesHouches -> {BL,35}}},

{yc, {OutputName -> YC,
      LaTeX -> "Y_c",
      LesHouches -> {BL,36}}},

{y1, {OutputName -> Y1,
      LaTeX -> "Y_1",
      LesHouches -> Y1}},

{y2, {OutputName -> Y2,
      LaTeX -> "Y_2",
      LesHouches -> Y2}},

{y3, {OutputName -> Y3,
      LaTeX -> "Y_3",
      LesHouches -> Y3}},

{y4, {OutputName -> Y4,
      LaTeX -> "Y_4",
      LesHouches -> Y4}},

{vX,      {  LaTeX -> "v_X",
             Dependence ->  None,
             OutputName -> vX,
             Real -> True,
             LesHouches -> {BL,39} }},



{Vu,        {Description ->"Left-Up-Mixing-Matrix"}},
{Vd,        {Description ->"Left-Down-Mixing-Matrix"}},
{Uu,        {Description ->"Right-Up-Mixing-Matrix"}},
{Ud,        {Description ->"Right-Down-Mixing-Matrix"}}, 
{Ve,        {Description ->"Left-Lepton-Mixing-Matrix"}},
{Ue,        {Description ->"Right-Lepton-Mixing-Matrix"}},

{ZM,	    {Description -> "Neutrino-Mixing-Matrix"}},

{ZH,        { Description->"Scalar-Mixing-Matrix", 
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None   }},
{ZA,        { Description->"Pseudo-Scalar-Mixing-Matrix", 
                Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None   }},
{ZN,        { Description->"Neutral-Scalar-Mixing-Matrix",
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None,
               LesHouches -> NEUTRALMIX,
               OutputName -> ZN}},
{ZT,        { Description->"Neutral-Scalar-Mixing-Matrix-2",
               Dependence -> None,
               DependenceOptional -> None,
               DependenceNum -> None,
               LesHouches -> SECONDNEUTRALMIX,
               OutputName -> ZT}}
 };
 

