# data from
# Officer et al (1984) Chesapeake Bay anoxia: Origin, development, and significance. Science

officer1984_data = read.table("~/git/bad_paper_figure_gallery/officer1984_fig1.tab", header=TRUE, sep="\t")

months = c("J", "F", "M", "A", "M", "J", "J", "A", "S", "O", "N", "D")

pdf(file="~/git/bad_paper_figure_gallery/officer1984_fig1_redo.pdf", width=8, height=6)
par(mar=c(3.5,8.5,3,4.5))
plot(officer1984_data$month, officer1984_data$temp_C, type='l', 
     ylim=c(0,50), xlab="", ylab="", axes=FALSE,
     lwd=4, cex.axis=1.4, cex.lab=1.4, col="#ec701488",
     main="Seasonal data from 1970 for the midportion of the Chesapeake Bay")
points(officer1984_data$month, officer1984_data$temp_C,
       col="#ec701488", cex=3, pch=15)
lines(officer1984_data$month, officer1984_data$oxygen_mL_L*5, col="#08408188", lwd=4)
points(officer1984_data$month, officer1984_data$oxygen_mL_L*5,
       col="#08408188", cex=3.5, pch=18)
lines(officer1984_data$month, officer1984_data$primary_productivity_g_C_m2_d*5, col="#238b4588", lwd=4)
points(officer1984_data$month, officer1984_data$primary_productivity_g_C_m2_d*5,
       col="#238b4588", cex=3, pch=16)
axis(1, at=c(1:12), label=months, cex.axis=1.4)
mtext("Temperature (C)", side=2, line=3, cex=1.4, col="#c85906")
axis(2, at=seq(0,10,1)*5, cex.axis=1.4, col="#c85906", col.axis="#c85906")
mtext("Oxygen (mL/L)", side=2, line=7, cex=1.4, col="#084081")
axis(2, at=seq(0,10,1)*5, label=seq(0,10,1), line=4.5, cex.axis=1.4, col="#084081", col.axis="#084081")
mtext(expression(paste("Primary Productivity (gC/m"^"2","d)")), side=4, line=3, cex=1.4, col="#136e30")
axis(4, at=seq(0,10,1)*5, label=seq(0,10,1), cex.axis=1.4, col="#136e30", col.axis="#136e30")
dev.off()




