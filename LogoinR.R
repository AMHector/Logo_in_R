library("cowplot")
library("ggplot2")
a <- ggplot(cabbage_exp, aes(x = Date, y = Weight, fill = Cultivar)) +
  geom_col(colour = "#0B2447", position = "fill")+
  scale_fill_manual(values = c("#19376D", "#576CBC")) +
  theme(legend.position = "none",
        axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank())
b <- ggplot() +
  ylim(4.2, 8) +
  xlab("") +
  ylab("")+
  annotate('text', label='PEARSON',x=7, y=6, hjust=0.5, vjust=0, size=34, color='#576CBC') + 
  annotate('text', label='PEARSON', x=7, y=6, hjust=0.5, vjust=0, size=34.4, color= "#0B2447") +
  annotate('text', label='CONSULTORIA ESTADISTICA', x=7, y=5.2, hjust=0.5, vjust=0, size=11.45, color= "#19376D") +
  theme(legend.position = "none",
        panel.grid = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.background = element_blank())

plot_grid(a,b, ncol = 2, nrow = 1, rel_widths = c(1, 3))
