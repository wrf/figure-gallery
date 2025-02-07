# gallery of problematic paper figures #

## use of space ##
One of the simplest issues is related to use of space in a figure, such as too much white space, or too much chart junk.

This one about [post-retraction citation](https://link.springer.com/article/10.1007/s11192-020-03631-1) is one where the figure is much taller than it needs to be. In the paper itself, it takes up almost an entire page (of A5/ half-page size), when it could be about a third of that size. Additionally, the Y-axis does not start at 0, which is confusing. 

![schneider 2020 bar plot](https://github.com/wrf/figure-gallery/blob/main/figures/schneider_2020_Fig1.png)

In fact, here is a redo attempt using their data:

![schneider 2020 bar plot remade at compact size](https://github.com/wrf/figure-gallery/blob/main/redo/schneider2020_fig1_redo_example.png)

This one, from a [population genetic study on domestication of chickens](https://doi.org/10.1186/s12915-020-0738-1), could reconsider the usage of space. I would make the 4 photos as a full column on the left so that they are visible at all, make the map larger and clearer, make the PCA plot smaller with larger font since there are only a few points, make the bars shorter for the admixture plot, since there is not very much resolution anyway, and shrink the legend, which takes up a lot of space.

![lawal 2020 figure 1 composite of map and admixture](https://github.com/wrf/figure-gallery/blob/main/figures/lawal2020_12915_2020_738_Fig1_HTML.jpg)

## too many labels ##
After about a dozen or so colors, it becomes difficult to keep track of individual colors. The authors should probably think a bit harder about what they want to say with the figure. A better way of handling this is to make the top 10-or-so factors as colors, and the rest as gray.

Here in [Klinges 2019](https://www.nature.com/articles/s41396-019-0482-0), the pie charts are only part of the problem, since the stripes and polka dots are much worse.
![Klinges 2019 bad pie charts](https://github.com/wrf/figure-gallery/blob/main/figures/klinges2019_bad_figure.jpg)

This next one by [Busch 2022](https://doi.org/10.1038/s41467-022-32684-4) turns the data into a circle for no reason, since it would be clearer as a square grid. Many colors are very similar, so again, hard to interpret.
![Busch 2022 with circos plot](https://github.com/wrf/figure-gallery/blob/main/figures/busch2022_Fig4_HTML.png)

Many species in this figure by [Kenny 2020](https://doi.org/10.1038/s41467-020-17397-w) end up as black, but the labels are so small that they all look like black squares.
![Kenny 2020 Supp Figure 11](https://github.com/wrf/figure-gallery/blob/main/figures/kenny_2020_sfig_11.png)

This can also be a problem without colors. This figure from [Amei 2020](https://doi.org/10.11646/zoosymposia.19.1.9) seems to have other figures in color in the same article, so it is not banned by the journal, but chose a scheme that is very difficult to visually grasp. There are only 10 categories (9 species and then others), so it actually could be in color.
![Amei 2020 Figure 3](https://github.com/wrf/figure-gallery/blob/main/figures/amei_2020_zootaxa_fig3.png)

## circular plots ##
I do not like circular plots, Circos plots, or similar. They typically have the same problem where it is difficult to compare positions since it requires mental rotation of the plot, a task that humans are bad at. The [creators of Circos](https://genome.cshlp.org/content/early/2009/06/15/gr.092759.109.abstract) argue that there are some [visual advantages of those plots](http://circos.ca/intro/circular_approach/) - beyond "not the least being the fact that it is attractive." However, attractive, but hard to interpret, does not make a good graph.

These are very common in genomics. For bacterial genomes, it at least makes some sense to represent circular genomes as a circle, but this gets widely misused and abused. In this one from [Kenny 2020](https://doi.org/10.1038/s41467-020-17397-w), no scale bars and no description in the caption, so even though the purple and green peaks are identifiable, it is hard to interpret. Also, in that paper, it was not clear that the bacterial genome was complete, so it was not necessarily a circle yet.
![Kenny 2020 Supp Figure 11](https://github.com/wrf/figure-gallery/blob/main/figures/kenny_2020_sfig_10_circos_plot.png)

Same goes for the *Lactobacillus genome* by [Van De Guchte 2006](https://doi.org/10.1073/pnas.0603024103). Too many similar colors, things are in the caption that should instead be labeled on the graph.
![Lactobacillus genome Figure 2](https://github.com/wrf/figure-gallery/blob/main/figures/van_de_guchte_2006_fig2.png)

Here I agree with [Claus Wilke's advice for pie charts](https://clauswilke.com/dataviz/visualizing-proportions.html):

* "Clearly visualizes the data as proportions of a whole"
* "Visually emphasizes simple fractions, such as 1/2, 1/3, 1/4"

One can see why these rules are suggested in the case below, where 20 amino acids are given random colors by Excel, and also start with a pie slice that is not relevant to the message of the paper by [Schmidt 2020](https://doi.org/10.1038/s41598-020-77107-w). The pie should start either at 12 o-clock or 3 o-clock with the most relevant slice, or color the slices in some logical way, either to emphasize key amino acids, or to color them by biochemical category as is done in many studies. There is also a lot of white space.
![Schmidt 2020 Figure 2](https://github.com/wrf/figure-gallery/blob/main/figures/schmidt_2020_figure_2.png)

Here are a bunch more where pie charts should have been bars. Pie charts *can* be effective with the above rules where there is an explicit "whole" and the target is key fractions, but for something that could have arbitrarily been sampled more (i.e. there was no limit to the number of samples, like taking the first 100 or something), it is better to use bars to just show the counts, as was done here for [Keeling 2014](https://doi.org/10.1371/journal.pbio.1001889).

<img src="https://github.com/wrf/figure-gallery/blob/main/figures/keeling_2014_pbio.1001889.g001.png" alt="Keeling 2014 Figure 1" height="1500">

Here are my replots of the same datasets:

![Keeling 2014 replots](https://github.com/wrf/misc-analyses/blob/master/marine_meta/sample-attr_oceanography.png)

## wrong type of graph ##
Sometimes points are used that should be lines, or lines instead of bars, or bars instead of points.

This one from [Sun 2015](https://pmc.ncbi.nlm.nih.gov/articles/PMC4667430/) uses lines that should be bars, since there is no obvious reason that the species (here, the datapoints) are connected to each other - like they are not sequential, they are categorical. There was an order to the species in question based on a phylogenetic tree, which was arbitrary (can be rotated) and is also not displayed in this figure when it should be.

![Sun 2015 Figure 4](https://github.com/wrf/figure-gallery/blob/main/figures/sun2015_ncomms9322-f4.jpg)

## venn diagrams ##
These got very popular at the height of the genome paper age. They just look like a sea of numbers.

This one from the [banana genome](https://doi.org/10.1038/nature11241) even put a banana in the middle, further obscuring the numbers.
![Dhont 2012 banana venn diagram](https://github.com/wrf/figure-gallery/blob/main/figures/dhont_2012_banana_genome_fig4.png)

Even in [2020](https://doi.org/10.1371/journal.pntd.0008720), they were still used.
![korhonen_2020_pntd.0008720.g002.png](https://github.com/wrf/figure-gallery/blob/main/figures/korhonen_2020_pntd.0008720.g002.png)

## crowded plots ##
Too many lines or points on the same plot can also make graphs hard to interpret.

This one tries to show three variables on the same plot, but the lines all look the same and are directly labeled, instead of using separate shapes or lines styles (I'm assuming that colors were not an option then).
![Officer 1984 plot](https://github.com/wrf/figure-gallery/blob/main/figures/officer1984_fig1.png)

## paper titles ##
I can take an additional moment to critique paper titles that are overly generic, in that they say nothing about the results. Vanity journals are especially responsible for this. Maybe we could reword this as ***don't fear the verb***, since most of the first group clearly indicate a *topic* but say nothing about how that *does anything* or relates to anything else.

* [Genomic anatomy of the hippocampus. (2008, Neuron)](https://doi.org/10.1016/j.neuron.2008.12.008)
* [Low Mid-Proterozoic atmospheric oxygen levels and the delayed rise of animals (2014, Science)](https://www.science.org/doi/10.1126/science.1258410)
* [Egalitarianism in young children. (2014, Nature)](https://www.nature.com/articles/nature07155)
* [Mummified seal carcasses in the McMurdo Sound region (1959, Science)](https://www.science.org/doi/10.1126/science.130.3377.716)
* [Oxygen tension of the vaginal surface during sexual stimulation in the human (1978, Fertility and Sterility)](https://doi.org/10.1016/s0015-0282(16)43395-9)

versus some ones that make a statement in the title

* [The sirtuin SIRT6 regulates lifespan in male mice. (2012, Nature)](https://www.nature.com/articles/nature10815)
* [Genomic and archaeological evidence suggest a dual origin of domestic dogs (2016, Science)](https://www.science.org/doi/10.1126/science.aaf3161)
* [Dragon fish see using chlorophyll (1998, Nature)](https://www.nature.com/articles/30871)

