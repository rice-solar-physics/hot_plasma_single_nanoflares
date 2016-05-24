# Cover Letter: *Inference of Heating Properties from "Hot" Non-flaring Plasmas in Active Region Cores I. Single Nanoflares*
**Authors:** W. T. Barnes, P. J. Cargill, S. J. Bradshaw

**Received from Reviewer:** 8 April 2016

We are grateful to the referee for some very useful suggestions. As we will discuss in a moment, one of these has led to us returning to the EBTEL method and implementing some improvements. Our responses are included below, with the corresponding referee comments shown in italics.

## Major Comments

> *First, I would like to say that I appreciate the authors' efforts in continuing to develop these types of models. As the authors detail in their introduction, there are several observational studies that have looked for or claim to have detected hot plasma in the solar corona, but without the knowledge of the expected amount of plasma or the implications of the detection of the hot plasma, these observations have little meaning.*
>
> *My concern with this paper is that I cannot tell if the authors have validated the EBTEL (0-D) code with HYDRAD. In the first study presented in this paper, both HYDRAD and EBTEL results are shown. In subsequent studies, only EBTEL is shown. Has the EBTEL code been verified for these parameters (ionization non-equilibrium, 2 fluid, etc)? If so, where? If not, why? I understand the authors plan to present many additional results from EBTEL in a subsequent paper. It is perhaps better to present thorough verification in this paper. In the section on HYDRAD comparison, it states that "caution is warranted" in some cases using EBTEL. Have the authors checked that it provides satisfactory results in all the cases presented in this paper?*

This has turned out to be a very important point. We have run separate two-fluid comparisons of HYDRAD and EBTEL for both ion and electron heating. In the past (Cargill et al, 2012a), we accepted the fact that EBTEL typically leads to higher densities than HYDRAD as a consequence of it being an approximate model. The figures in that paper show that the difference, defined as (*n<sub>EBTEL</sub> – n<sub>HYDRAD</sub>)/n<sub>HYDRAD</sub>*, was of order 10 – 17% at time of maximum density. The two-fluid cases in the present paper showed significantly larger values of this ratio (up to 30%) which, although the EBTEL method IS approximate, we do not find especially satisfactory.
The cause of this lies in the under-estimation of the parameter *c<sub>1</sub>* in the heating and conductive cooling phase (i.e. before the density maximum). Currently we use the “equilibrium” value *c<sub>1</sub>* = 2 at all times when the loop is not over-dense (see Section 3 of Cargill et al., 2012a for full description). In fact, the loop is under-dense in this phase, and assessment of the HYDRAD results shows that we are under-estimating the TR radiation at that time, with *c<sub>1</sub>* being too small.

In fact, in the development of the Cargill et al. (2012a) we looked at the option of a higher *c<sub>1</sub>* in this phase, but it made no tangible difference for the examples we considered, so was not included on grounds of simplicity. The parameters here in general have the combination of longer loops and stronger pulses than considered previously, and this does seem to be an issue.

We have experimented with various formalisms for *c<sub>1</sub>* and have developed an alternative description that is analogous to the *c<sub>1</sub>* prescription during the radiation/enthalpy phase (see Cargill et al., 2012a). While this still leads to the EBTEL density exceeding that of HYDRAD, the difference is now within the limits of what we consider to be acceptable. We have also run this formalism on all the heating cases discussed in Bradshaw and Cargill (2013) with acceptable results.

Thus, to address the concerns of the referee, we have done the following:

* Included a new appendix that outlines the modification to *c<sub>1</sub>*. We wish to make clear that in the development of the *c<sub>1</sub>* formalism, the main aim has been simplicity, and to preserve the generality of EBTEL for present and future uses. Other ways were considered, but they became complicated (too many “if” statements) and, in some situations, required knowing in advance the heating profile. This loss of generality was not acceptable.
* Provided a table (in the new appendix) that compares the maximum density calculated from HYDRAD and the old and new EBTELs for a range of examples. The maximum temperature is not shown because the modification leads to little change.  The present change involves 3 lines of IDL code.
* Modified Figs. 3 and 5 to include the necessary comparisons to HYDRAD for electron and ion heating. A discussion of these new comparisons can be found in section 3.2.3

Regarding NEI, the model used for this simply uses the EBTEL and (spatially-averaged) HYDRAD input into the Brdshaw (2009) model.

> *In the introduction, though I appreciated the thorough background provided by the authors, I thought they should include adequate skepticism in the observations, especially dealing with long time averaged or spatially average data (i.e., "contamination" of the DEM by multiple structures). The high-temperature slope of the DEM is only meaningful, in the comparisons to the authors' model, if measured in a single structure.*

It depends what is meant by “structure”. The sort of modeling that we and others have been doing applies to a large number of sub-strands (or elemental loops) comprising the observed structure (e.g. the “core” loops of Warren et al. (2012) and so on). On the other hand, if the referee means other stuff along the line of sight, then this point is valid, and we have noted that on page 2.

> *Finally, I am confused by the method the authors use to calculate the power-law of the model EM at high temperatures. Given that they authors create these EM curves (i.e., Figure 1), it seems all they would need to do is fit a power law to EM above the temperature where the EM peaks. But the discussion in the last paragraph of 3.1.1 and following leads me to believe they are estimating b from another method. In some places, they are uncertain with this power law fit. Why?* 

We have discussed the power-law scaling of the emission measure distribution (i.e. EM~*T^(<sup>-b</sup>)*) in two ways: 1) in reference to analytical relationships that can be derived from scaling laws and simplified hydrodynamic equations and 2) in the context of fitting a function of the form *T<sup>-b</sup>* to the emission measure distribution for *T>T<sub>m</sub>*.

Our aim is to show where these simple scaling laws can explain our results and where they fail to do so. We have made an effort to make the distinction between the two approaches more explicit (e.g. end of section 3.1.1, last paragraph of section 3.1.3, end of section 3.2.1).

## Minor Comments
* *Introduction, second paragraph: "...and is a significant result for nanoflare heating." I believe the authors mean "and has significant implications for nanoflare heating."*

 Yes. We have made the appropriate change.

* *Section 2.1, first paragraph: Please provide a reference for choosing f=1/6.*
 
 This is an interesting point. *f* = 1/6 was used in the first EBTEL paper (Klimchuk el al, 2008) with references to Karpen and DeVore (1987) and Luciani et al. (1983). In fact, when we looked at these old papers, they did not use *f* = 1/6, but rather 0.53 and 0.1, respectively. We have implemented these other values and have modified our discussion in sections 2.1 and 3.1.3 and Fig. 2 appropriately.

* *Section 3.1.1, end of second paragraph, last sentence is only true if detection occurs in a single structure with broad DEM. If there are multiple structures along the line of sight with varying temperatures, can you make that statement?*
 
 This comes back to what is meant by “structure” (see above).

* *Figure 2, why not show the entire plot (at least down to the peak of the EM curve)?*

 We have chosen to show EM only for *T>T<sub>m</sub>* because the cool side of the emission measure distribution is unchanged by the choice of *f*. We have included a comment in the caption of Fig. 2 to this effect.

* *Figure 7, I do not believe the caption and figure agree. Where are the purple lines?*

 The purple lines are in the right panel of Fig. 7. They show the emission measure distribution, assuming ionization equilibrium, for a pulse width of 500 s. It is possible that the purple color is difficult to distinguish because of the overlap with the red lines (NEI results). We have chosen to color the IE EM blue (left panel) and purple (right panel) for pulse widths of 20 and 500 s, respectively, because these are the colors used for these respective pulse widths in the preceding figures, Figs. 1, 3, and 5. 

