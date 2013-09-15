#grid plot_working ones..
geom_text(aes(label = Count, y = Count), size = 3)
qplot(Rank,Sum,data=output$value[[6]],fill=Name,geom="bar")+
facet_wrap(facets=~Name,scale="free_x")+
geom_text(aes(label = Count, y = Count), size = 3)