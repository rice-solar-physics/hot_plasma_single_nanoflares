# Hot Non-flaring Plasma in Active Regions I

Text and figures for first paper on hot non-flaring plasma in ARs studied using 0D 
hydrodynamics.

##Table
Table summarizing hot plasma results similar to that shown in Bradshaw et al. (2012) for cool emission measure slopes. This may be a bit of a challenge as few authors actually report hot emission measure slopes. 

Format: (Author) (Slope) (Observation or Model) (Temperature range) (Comments)

+ Caspi et al. (2015)--fit DEM model with b~6, temperature range unclear

+ Warren et al. (2012)--survey of many AR cores, fitting both hot and cool sides; _b_ ranged from 6-10 with large uncertainties. 

| Author | Type | Comments |
|:------:|:----:|:---------|
| Warren et al. (2011) | Observation |   |
| Caspi et al. (2015) | Observation | fit DEM model with b~6 |

## Direction

So now the paper will address how the presence of hot plasma can be affected by the following:

+ Pulse duration
+ Heat flux limiting
+ Electron versus ion heating
+ Non-equilibrium ionization

The first point includes how the increase in density in EBTEL might affect the EM results.

##Figures

+ __Fig. 1__: T(t) and n(t) for EBTEL and HYDRAD for tau=20,40,200,500 s
+ __Fig. 2__: EM(T) for EBTEL and HYDRAD for tau=20,40,200,500 s
+ __Fig. 3__: EM(T) for Spitzer, f=1/6, and f=1/30 conduction (tau=200 s)
+ __Fig. 4__: T(t) and n(t) for two-fluid EBTEL results for both electron and ion heating; unsure of which pulse durations should be used here
+ __Fig. 5__: EM(T) for two-fluid EBTEL results, electron and ion heating (include NEI EM here?)
+ __Fig. 6__: T(t) and n(t) for NEI runs, compare with two-fluid electron and ion heating results
+ __Fig. A1__: conduction, radiation, and equilibration terms for fixed tau for a single two-fluid EBTEL run

## Reviewer's Comments
Received 8 April 2016

> I have reviewed the article "Inference of Heating Properties from the "Hot" Non-flaring Plasmas in Active Region Cores I. Single Nanoflares" and find the content is new, advances the understanding of the field and, after a few corrections and clarifications, should be suitable for publication in the Astrophysical Journal.
> 
> First, I would like to say that I appreciate the authors' efforts in continuing to develop these types of models. As the authors detail in their introduction, there are several observational studies that have looked for or claim to have detected hot plasma in the solar corona, but without the knowledge of the expected amount of plasma or the implications of the detection of the hot plasma, these observations have little meaning.
>
> ### Major Comments
> 
> My concern with this paper is that I cannot tell if the authors have validated the EBTEL (0-D) code with Hydrad. In the first study presented in this paper, both Hydrad and EBTEL results are shown. In subsequent studies, only EBTEL is shown. Has the EBTEL code been verified for these parameters (ionization non-equilibrium, 2 fluid, etc)? If so, where? If not, why? I understand the authors plan to present many additional results from EBTEL in a subsequent paper. It is perhaps better to present thorough verification in this paper. In the section on Hydrad comparison, it states that "caution is warranted" in some cases using EBTEL. Have the authors checked that it provides satisfactory results in all the cases presented in this paper?
> 
> In the introduction, though I appreciated the thorough background provided by the authors, I thought they should include adequate skepticism in the observations, especially dealing with long time averaged or spatially average data (i.e., "contamination" of the DEM by multiple structures). The high-temperature slope of the DEM is only meaningful, in the comparisons to the authors' model, if measured in a single structure.
> 
> Finally, I am confused by the method the authors use to calculate the power-law of the model EM at high temperatures. Given that they authors create these EM curves (i.e., Figure 1), it seems all they would need to do is fit a power law to EM above the temperature where the EM peaks. But the discussion in the last paragraph of 3.1.1 and following leads me to believe they are estimating b from another method. In some places, they are uncertain with this power law fit. Why? 
> 
> 
> ### Minor comments:
> 
> 1. Introduction, second paragraph: "...and is a significant result for nanoflare heating." I believe the authors mean "and has significant implications for nanoflare heating."
> 
> 2. Section 2.1, first paragraph: Please provide a reference for choosing f=1/6.
> 
> 3. Section 3.1.1, end of second paragraph, last sentence is only true if detection occurs in a single structure with broad DEM. If there are multiple structures along the line of sight with varying temperatures, can you make that statement?
> 
> 4. Figure 2, why not show the entire plot (at least down to the peak of the EM curve)?
> 
> 5. Figure 7, I do not believe the caption and figure agree. Where are the purple lines?

## Reviewer Checklist
Concerns raised by reviewer to address

- [x] Include HYDRAD comparisons for two-fluid results
 - [ ] Change text to include discussions of these comparisons
 - [ ] Provide discussion of discrepancy in density
- [ ] Discussion of contamination of DEM in multiple structures in introduction, section 3.1.1 (end of second paragraph), last sentence.
- [ ] Clear up methods for doing power-law fits, discussion of power-laws
- [ ] ~~Minor comment 1~~ **This is a matter of preference**
- [x] Minor comment 2, flux limiter
 - [ ] Provide more discussion of additional flux limiters considered
- [ ] Minor comment 4, comment why we only show logT>6.5
- [x] ~~Minor comment 5~~, **reviewer is mistaken**
