# gallery of problematic paper figures #

## use of space ##
One of the simplest issues is related to use of space in a figure. Here is one where the figure is much taller than it needs to be. In the paper itself, it takes up almost an entire page (of A5/ half-page size), when it could be about a third of that size.
![schneider 2020 bar plot](https://github.com/wrf/figure-gallery/blob/main/figures/schneider_2020_Fig1.png)

## too many labels ##
After about a dozen or so colors, it becomes difficult to keep track of individual colors. The authors should probably think a bit harder about what they want to say with the figure. A better way of handling this is to make the top 10-or-so factors as colors, and the rest as gray.

Here in [Klinges 2019](https://www.nature.com/articles/s41396-019-0482-0), the pie charts are only part of the problem, since the stripes and polka dots are much worse.
![Klinges 2019 bad pie charts](https://github.com/wrf/figure-gallery/blob/main/figures/klinges2019_bad_figure.jpg)

This next one by [Busch 2022](https://doi.org/10.1038/s41467-022-32684-4) turns the data into a circle for no reason, since it would be clearer as a square grid. Many colors are very similar, so again, hard to interpret.
![Busch 2022 with circos plot](https://github.com/wrf/figure-gallery/blob/main/figures/busch2022_Fig4_HTML.png)

Many species in this figure by [Kenny 2020](https://doi.org/10.1038/s41467-020-17397-w) end up as black, but the labels are so small that they all look like black squares.
![Kenny 2020 Supp Figure 11](https://github.com/wrf/figure-gallery/blob/main/figures/kenny_2020_sfig_11.png)

## circular plots ##
I do not like circular plots, Circos plots, or similar. They typically have the same problem where it is difficult to compare positions since it requires mental rotation of the plot. The [creators of Circos](https://genome.cshlp.org/content/early/2009/06/15/gr.092759.109.abstract) argue that there are some [visual advantages of those plots](http://circos.ca/intro/circular_approach/) - beyond "not the least being the fact that it is attractive." However, attractive, but hard to interpret, does not make a good graph.

These are very common in genomics. For bacterial genomes, it at least makes some sense to represent circular genomes as a circle, but this gets widely misused and abused. In this one from [Kenny 2020](https://doi.org/10.1038/s41467-020-17397-w), no scale bars and no description in the caption, so even though the purple and green peaks are identifiable, it is hard to interpret.
![Kenny 2020 Supp Figure 11](https://github.com/wrf/figure-gallery/blob/main/figures/kenny_2020_sfig_10_circos_plot.png)

Same goes for the *Lactobacillus genome* by [Van De Guchte 2006](https://doi.org/10.1073/pnas.0603024103). Too many similar colors, things are in the caption that should instead be labeled on the graph.
![Lactobacillus genome Figure 2](https://github.com/wrf/figure-gallery/blob/main/figures/van_de_guchte_2006_fig2.png)

Here I agree with [Claus Wilke's advice for pie charts](https://clauswilke.com/dataviz/visualizing-proportions.html):

* "Clearly visualizes the data as proportions of a whole"
* "Visually emphasizes simple fractions, such as 1/2, 1/3, 1/4"

One can see why these rules are suggested in the case below, where 20 amino acids are given random colors by Excel, and also start with a pie slice that is not relevant to the message of the paper by [Schmidt 2020](https://doi.org/10.1038/s41598-020-77107-w). The pie should start either at 12 o-clock or 3 o-clock with the most relevant slice, or color the slices in some logical way, either to emphasize key amino acids, or to color them by biochemical category as is done in many studies. There is also a lot of white space.
![Schmidt 2020 Figure 2](https://github.com/wrf/figure-gallery/blob/main/figures/schmidt_2020_figure_2.png)


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

