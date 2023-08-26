# redraw Schneider 2020 figure 1
# https://link.springer.com/article/10.1007/s11192-020-03631-1

years <- seq(2006,2019,1)

citations <- c(11,11,10,22,9,15,20,10,6,11,7,4,4,8)
is_retracted <- rep(c(FALSE, TRUE), c(3,11) )

pdf(file = "~/git/schneider2020_fig1_redo_example.pdf", width = 5, height = 3)
par(mar=c(3.5,4.5,2,1))
b <- barplot(citations, names.arg = years, ylim = c(0,23),
             main = "Citations of Matsuyama 2005 after retraction",
             xlab = "", ylab = "Citations", cex.lab=1.3,
        col = ifelse(is_retracted,"#f97b54ff", "#4c94f5ff" ), las=2,  )
text(b, citations-1, citations)
dev.off()


#