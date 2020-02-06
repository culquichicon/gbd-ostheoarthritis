*********************************************************************
* Project: 	Global burden of disease in osteoarthritis - Essalud	*
* Authors: 	Roger V. Araujo-Castillo, Carlos Culquichicon, 			*
*			Risof Solís Condor3										*
* Data analysists: 	Roger V. Araujo-Castillo, and 					*
*					Carlos Culquichicon								*
* Last update:		02/06/20										*
*********************************************************************


*** CARGA ENFERMEDAD ARTROSIS ***

*** Tabla 1 ***

tab SEXO, missing
sum EDAD, d
swilk EDAD
histogram EDAD, width(5) percent normal ytitle(%Numero de pacientes) xtitle(Edad en años)
tab EDAD_GRUPO, missing
tab CIE10_3, missing
tab SERVICIO1, missing
tab SERVICIO2, missing
tab CENTRO2, missing

*** Tabla 2 ***

tab EDAD_GRUPO SEXO, col
tab SEXO CIE10_4, col
bysort CIE10_4: sum EDAD, d
tab EDAD_GRUPO CIE10_4, col
tab SERVICIO2 CIE10_4, col
tab CENTRO2 CIE10_4, col
tab CENTRO2 SEXO, row
tab CENTRO2 EDAD_GRUPO, row
tab CENTRO2 SERVICIO2, row

*** Carga de Enfermedad ***

graph bar (sum) AVD_1990WD_OMS AVD_GHE_OMS AVD_1990WD_MINSA AVD_GHE_MINSA, bargap(10) blabel(total, format(%9.0g)) ytitle(AVISAS) ylabel(, nolabels) ymtick(, nolabels)

*------------------------------------------------------------------------------*

* En general *

sum AVD_1990WD_OMS, d
total(AVD_1990WD_OMS)
total(AVD_1990WD_OMS), over(SEXO)
total(AVD_1990WD_OMS), over(EDAD_GRUPO)
total(AVD_1990WD_OMS), over(CIE10_3)
total(AVD_1990WD_OMS), over(SERVICIO2)
total(AVD_1990WD_OMS), over(CENTRO2)

sum AVD_1990WD_MINSA, d
total(AVD_1990WD_MINSA)
total(AVD_1990WD_MINSA), over(SEXO)
total(AVD_1990WD_MINSA), over(EDAD_GRUPO)
total(AVD_1990WD_MINSA), over(CIE10_3)
total(AVD_1990WD_MINSA), over(SERVICIO2)
total(AVD_1990WD_MINSA), over(CENTRO2)

sum AVD_GHE_OMS, d
total(AVD_GHE_OMS)
total(AVD_GHE_OMS), over(SEXO)
total(AVD_GHE_OMS), over(EDAD_GRUPO)
total(AVD_GHE_OMS), over(CIE10_3)
total(AVD_GHE_OMS), over(SERVICIO2)
total(AVD_GHE_OMS), over(CENTRO2)

sum AVD_GHE_MINSA, d
total(AVD_GHE_MINSA)
total(AVD_GHE_MINSA), over(SEXO)
total(AVD_GHE_MINSA), over(EDAD_GRUPO)
total(AVD_GHE_MINSA), over(CIE10_3)
total(AVD_GHE_MINSA), over(SERVICIO2)
total(AVD_GHE_MINSA), over(CENTRO2)

*------------------------------------------------------------------------------*

* Segun tipo de artrosis *

total(AVD_1990WD_OMS) if CIE10_3==2, over(SEXO)
total(AVD_1990WD_OMS) if CIE10_3==2, over(EDAD_GRUPO)
total(AVD_1990WD_OMS) if CIE10_3==2, over(SERVICIO2)
total(AVD_1990WD_OMS) if CIE10_3==2, over(CENTRO2)
total(AVD_1990WD_OMS) if CIE10_3==3, over(SEXO)
total(AVD_1990WD_OMS) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_1990WD_OMS) if CIE10_3==3, over(SERVICIO2)
total(AVD_1990WD_OMS) if CIE10_3==3, over(CENTRO2)

total(AVD_1990WD_MINSA) if CIE10_3==2, over(SEXO)
total(AVD_1990WD_MINSA) if CIE10_3==2, over(EDAD_GRUPO)
total(AVD_1990WD_MINSA) if CIE10_3==2, over(SERVICIO2)
total(AVD_1990WD_MINSA) if CIE10_3==2, over(CENTRO2)
total(AVD_1990WD_MINSA) if CIE10_3==3, over(SEXO)
total(AVD_1990WD_MINSA) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_1990WD_MINSA) if CIE10_3==3, over(SERVICIO2)
total(AVD_1990WD_MINSA) if CIE10_3==3, over(CENTRO2)

total(AVD_GHE_OMS) if CIE10_3==2, over(SEXO)
total(AVD_GHE_OMS) if CIE10_3==2, over(EDAD_GRUPO)
total(AVD_GHE_OMS) if CIE10_3==2, over(SERVICIO2)
total(AVD_GHE_OMS) if CIE10_3==2, over(CENTRO2)
total(AVD_GHE_OMS) if CIE10_3==3, over(SEXO)
total(AVD_GHE_OMS) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_GHE_OMS) if CIE10_3==3, over(SERVICIO2)
total(AVD_GHE_OMS) if CIE10_3==3, over(CENTRO2)

total(AVD_GHE_MINSA) if CIE10_3==2, over(SEXO)
total(AVD_GHE_MINSA) if CIE10_3==2, over(EDAD_GRUPO)
total(AVD_GHE_MINSA) if CIE10_3==2, over(SERVICIO2)
total(AVD_GHE_MINSA) if CIE10_3==2, over(CENTRO2)
total(AVD_GHE_MINSA) if CIE10_3==3, over(SEXO)
total(AVD_GHE_MINSA) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_GHE_MINSA) if CIE10_3==3, over(SERVICIO2)
total(AVD_GHE_MINSA) if CIE10_3==3, over(CENTRO2)

*------------------------------------------------------------------------------*

*Version reducida*

total(AVD_1990WD_OMS) if CIE10_3==3, over(SEXO)
total(AVD_1990WD_OMS) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_1990WD_OMS) if CIE10_3==2, over(SEXO)
total(AVD_1990WD_OMS) if CIE10_3==2, over(EDAD_GRUPO)

total(AVD_1990WD_MINSA) if CIE10_3==3, over(SEXO)
total(AVD_1990WD_MINSA) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_1990WD_MINSA) if CIE10_3==2, over(SEXO)
total(AVD_1990WD_MINSA) if CIE10_3==2, over(EDAD_GRUPO)

total(AVD_GHE_OMS) if CIE10_3==3, over(SEXO)
total(AVD_GHE_OMS) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_GHE_OMS) if CIE10_3==2, over(SEXO)
total(AVD_GHE_OMS) if CIE10_3==2, over(EDAD_GRUPO)

total(AVD_GHE_MINSA) if CIE10_3==3, over(SEXO)
total(AVD_GHE_MINSA) if CIE10_3==3, over(EDAD_GRUPO)
total(AVD_GHE_MINSA) if CIE10_3==2, over(SEXO)
total(AVD_GHE_MINSA) if CIE10_3==2, over(EDAD_GRUPO)

*------------------------------------------------------------------------------*

*Solo con Diagnostico definido*

total(AVD_1990WD_MINSA) if CIE10_5==1, over(SEXO)
total(AVD_1990WD_MINSA) if CIE10_5==1, over(EDAD_GRUPO)

