#include "../include/micromegas.h"
#include "lib/pmodel.h"
#include"../include/micromegas_aux.h"
#include <string>

using namespace std;

/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */
/* MAIN PROGRAM for two dark-matter candidates (by F.Staub, last change 04.05.2015)			     		    */
/* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */

int main(int argc, char** argv)
{  
		int err, i;
	   	char lspname[10], nlspname[10];
		double Omega=-1, Xf=-1;
		double w;
		double cut = 0.01;		// cut-off for channel output								
		int fast = 1;			/* 0 = best accuracy, 1 = "fast option" accuracy ~1% 	     */
 		double Beps = 1.E-5;  		/* Criteqrium for including co-annihilations (1 = no coann.) */
 		VZdecay=0; VWdecay=0; cleanDecayTable();
		ForceUG=1; 
			err = sortOddParticles(lspname);	
			printMasses(stdout,1);				
	 		Omega = darkOmega2(fast,Beps);
                        printf("Omega_1h^2=%.2E\n", Omega*(1-fracCDM2));
                        printf("Omega_2h^2=%.2E\n", Omega*fracCDM2);			
			printf("\n");
// 			printChannels(Xf, cut,Beps,1,stdout);
			FILE *omega = fopen("omg.out","w");
			fprintf(omega,"%i %6.6lf # total relic density \n",1,Omega);
			fprintf(omega,"%i %6.6lf # relic density for CDM1\n", 2,Omega*(1-fracCDM2));
			fprintf(omega,"%i %6.6lf # relic density for CDM2\n", 3,Omega*fracCDM2);			
// 			w = 1.;
// 			i = 0;
// 			while (w>cut) 
// 			{
// 			    fprintf(omega,"%i %6.6lf # %s %s -> %s %s\n",100+i,omegaCh[i].weight,omegaCh[i].prtcl[0],omegaCh[i].prtcl[1],omegaCh[i].prtcl[2],omegaCh[i].prtcl[3]);
// 			    i++;
// 			    w = omegaCh[i].weight;
// 			}
// 			FILE *channels = fopen("channels.out","w");
// 			w = 1.;
// 			i = 0;
// 			while (w>cut) 
// 			{
// 			fprintf(channels,"%li %li %li %li %6.6lf # %s %s -> %s %s\n",pNum(omegaCh[i].prtcl[0]),pNum(omegaCh[i].prtcl[1]),pNum(omegaCh[i].prtcl[2]),pNum(omegaCh[i].prtcl[3]),omegaCh[i].weight,omegaCh[i].prtcl[0],omegaCh[i].prtcl[1],omegaCh[i].prtcl[2],omegaCh[i].prtcl[3]);
// 			    i++;
// 			    w = omegaCh[i].weight;
// 			}
{ double pA0[2],pA5[2],nA0[2],nA5[2];
  double Nmass=0.939; /*nucleon mass*/
  double SCcoeff;        
  double csSIp1,csSIn1,csSDp1,csSDn1, csSIp1_,csSIn1_,csSDp1_,csSDn1_;
  double csSIp2,csSIn2,csSDp2,csSDn2, csSIp2_,csSIn2_,csSDp2_,csSDn2_;
printf("\n==== Calculation of CDM-nucleons amplitudes  =====\n");   

  if(CDM1)
  {  
    nucleonAmplitudes(CDM1, pA0,pA5,nA0,nA5);
    printf("%s[%s]-nucleon micrOMEGAs amplitudes\n",CDM1,aCDM1?aCDM1:CDM1);
    printf("proton:  SI  %.3E [%.3E]  SD  %.3E [%.3E]\n",pA0[0], pA0[1],  pA5[0], pA5[1] );
    printf("neutron: SI  %.3E [%.3E]  SD  %.3E [%.3E]\n",nA0[0], nA0[1],  nA5[0], nA5[1] ); 

    SCcoeff=4/M_PI*3.8937966E8*pow(Nmass*Mcdm1/(Nmass+ Mcdm1),2.);
    csSIp1=  SCcoeff*pA0[0]*pA0[0];  csSIp1_=  SCcoeff*pA0[1]*pA0[1];
    csSDp1=3*SCcoeff*pA5[0]*pA5[0];  csSDp1_=3*SCcoeff*pA5[1]*pA5[1];
    csSIn1=  SCcoeff*nA0[0]*nA0[0];  csSIn1_=  SCcoeff*nA0[1]*nA0[1];
    csSDn1=3*SCcoeff*nA5[0]*nA5[0];  csSDn1_=3*SCcoeff*nA5[1]*nA5[1];
                    
    printf("%s[%s]-nucleon cross sections[pb]:\n",CDM1,aCDM1?aCDM1:CDM1);
    printf(" proton  SI %.3E [%.3E] SD %.3E [%.3E]\n", csSIp1,csSIp1_,csSDp1,csSDp1_);
    printf(" neutron SI %.3E [%.3E] SD %.3E [%.3E]\n", csSIn1,csSIn1_,csSDn1,csSDn1_);     
  }
  if(CDM2)
  {
    nucleonAmplitudes(CDM2, pA0,pA5,nA0,nA5);
    printf("%s[%s]-nucleon micrOMEGAs amplitudes\n",CDM2,aCDM2?aCDM2:CDM2 );
    printf("proton:  SI  %.3E [%.3E]  SD  %.3E [%.3E]\n",pA0[0], pA0[1],  pA5[0], pA5[1] );
    printf("neutron: SI  %.3E [%.3E]  SD  %.3E [%.3E]\n",nA0[0], nA0[1],  nA5[0], nA5[1] ); 

    SCcoeff=4/M_PI*3.8937966E8*pow(Nmass*Mcdm2/(Nmass+ Mcdm2),2.);
    csSIp2=  SCcoeff*pA0[0]*pA0[0];  csSIp2_=  SCcoeff*pA0[1]*pA0[1];
    csSDp2=3*SCcoeff*pA5[0]*pA5[0];  csSDp2_=3*SCcoeff*pA5[1]*pA5[1];
    csSIn2=  SCcoeff*nA0[0]*nA0[0];  csSIn2_=  SCcoeff*nA0[1]*nA0[1];
    csSDn2=3*SCcoeff*nA5[0]*nA5[0];  csSDn2_=3*SCcoeff*nA5[1]*nA5[1];
                    
    printf("%s[%s]-nucleon cross sections[pb]:\n",CDM2,aCDM2?aCDM2:CDM2);
    printf(" proton  SI %.3E [%.3E] SD %.3E [%.3E]\n", csSIp2,csSIp2_,csSDp2,csSDp2_);
    printf(" neutron SI %.3E [%.3E] SD %.3E [%.3E]\n", csSIn2,csSIn2_,csSDn2,csSDn2_);     

  }     
}
			fclose(omega);
// 			fclose(channels);

                  

  	return 0;
}

