

ParticleDefinitions[GaugeES] = {
      {H0,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 1,
                 LaTeX -> "H^0",
                 OutputName -> "H0" }},                         
      
      
      {Hp,  { 
                 PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 2,
                 LaTeX -> "H^+",
                 OutputName -> "Hp" }}, 
                 
               
    
      {VB,   { Description -> "B-Boson"}},                                                   
      {VG,   { Description -> "Gluon"}},          
      {VWB,  { Description -> "W-Bosons"}},          
      {gB,   { Description -> "B-Boson Ghost"}},                                                   
      {gG,   { Description -> "Gluon Ghost" }},          
      {gWB,  { Description -> "W-Boson Ghost"}}
      
      };
      
      
      
      
  ParticleDefinitions[EWSB] = {
            
      
    {hh   ,  { Description -> "Higgs",
                 PDG -> {25,35},
                 Width -> Automatic, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 1,
                 LaTeX -> "h",
                 OutputName -> "h" }}, 
                 
     {Ah   ,  {  Description -> "Pseudo-Scalar Higgs",
                 PDG -> {0,0},
                 Width -> {0, External}, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 2,
                 LaTeX -> "A_h",
                 OutputName -> "Ah" }},                      
      
      
     {Hm,     {   Description -> "Charged Higgs", 
                 PDG -> {0},
                 Width -> 0, 
                 Mass ->LesHouches,
                 FeynArtsNr -> 3,
                 LaTeX -> "H^-",
                 OutputName -> "Hm" }},                                              
      
       {VP,   { Description -> "Photon"}}, 
      {VZ,   { Description -> "Z-Boson",
      			 Goldstone -> Ah[{1}] }}, 
      {VG,   { Description -> "Gluon" }},          
      {VWm,  { Description -> "W-Boson",
                Goldstone->Hm }},         
      {gP,   { Description -> "Photon Ghost"}},                                                   
      {gWm,  { Description -> "Negative W-Boson Ghost"}}, 
      {gWmC, { Description -> "Positive W-Boson Ghost" }}, 
      {gZ,   { Description -> "Z-Boson Ghost" }},
      {gG,   { Description -> "Gluon Ghost" }},          
      {VZp,    { Description -> "Z'-Boson",
      			 Goldstone -> Ah[{2}]}},  
      {gZp,    { Description -> "Z'-Ghost" }},    
                               
                 
      {Fd,   { Description -> "Down-Quarks"}},   
      {Fu,   { Description -> "Up-Quarks"}},   
      {Fe,   { Description -> "Leptons" }},
      {Fv,   { Description -> "Neutrinos",
     			PDG ->{12,14,16,8810012,8810014} }},
      {Chi,  {PDG -> {1012},
	       Mass -> LesHouches,
	       ElectricCharge -> 0,
	       LaTeX -> "\\chi",
	       OutputName -> "Chi" }},
      {Xi,  {PDG -> {1021},
	       Mass -> LesHouches,
	       ElectricCharge -> 0,
	       LaTeX -> "\\Xi",
	       OutputName -> "Xi" }},
      {etI,   {  Description -> "CP-odd eta scalar",
		 PDG -> {1002},
		 Mass -> LesHouches,
		 ElectricCharge -> 0,
		 LaTeX -> "\\eta_I",
		 OutputName -> "ETI" }},
      {etm,   {  Description -> "Charged eta scalar",
		 PDG -> {1003},
		 Mass -> LesHouches,
		 ElectricCharge -> -1,
		 LaTeX -> "\\eta^-",
                 OutputName -> "ETM" }},
      {kpI,   {  Description -> "CP-odd kappa scalar",
		 PDG -> {1022},
		 Mass -> LesHouches,
		 ElectricCharge -> 0,
		 LaTeX -> "\\kappa_I",
		 OutputName -> "KPI" }},
      {kpm,   {  Description -> "Charged kappa scalar",
		 PDG -> {1023},
		 Mass -> LesHouches,
		 ElectricCharge -> -1,
		 LaTeX -> "\\kappa^-",
                 OutputName -> "KPM" }},
       {ns,  { Description -> "Neutral Scalars",
                 PDG -> {1025,1026},
                 Width -> Automatic,
                 Mass ->LesHouches,
                 FeynArtsNr -> 1000,
                 ElectricCharge -> 0,
                 LaTeX -> "S^0",
                 OutputName -> "NS" }},
       {nt,  { Description -> "Neutral Scalars 2",
                 PDG -> {1035,1036},
                 Width -> Automatic,
                 Mass ->LesHouches,
                 FeynArtsNr -> 1001,
                 ElectricCharge -> 0,
                 LaTeX -> "S^0_2",
                 OutputName -> "NT" }}
                 };
        
        
        
 WeylFermionAndIndermediate = {
     
    {H,      {   PDG -> 0,
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "H",
                 OutputName -> "" }},

    {S,      {   PDG -> {0},
                 Width -> 0,
                 Mass -> Automatic,
                 LaTeX -> "S",
                 OutputName -> "S" }},

    {Rh,      {   PDG -> {0},
                 Width -> 0,
                 Mass -> Automatic,
                 LaTeX -> "\\rho",
                 OutputName -> "Rh" }},

   {dR,     {LaTeX -> "d_R" }},
   {eR,     {LaTeX -> "e_R" }},
   {lep,     {LaTeX -> "l" }},
   {uR,     {LaTeX -> "u_R" }},
   {q,     {LaTeX -> "q" }},
   {eL,     {LaTeX -> "e_L" }},
   {dL,     {LaTeX -> "d_L" }},
   {uL,     {LaTeX -> "u_L" }},
   {vL,     {LaTeX -> "\\nu_L" }},

   {DR,     {LaTeX -> "D_R" }},
   {ER,     {LaTeX -> "E_R" }},
   {UR,     {LaTeX -> "U_R" }},
   {EL,     {LaTeX -> "E_L" }},
   {DL,     {LaTeX -> "D_L" }},
   {UL,     {LaTeX -> "U_L" }}
        };       


