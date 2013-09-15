#rank vs number of calls
Rank<-output$value[[5]]$Rank
Count<-output$value[[5]]$Count
callvscount<-data.frame(Rank=Rank,Count=Count)
console2<-ddply(callvscount,"Rank",numcolwise(sum))

plot_call2<- ggplot(console2, aes_string(x='Rank', y='Count')) + 
  geom_bar(stat="identity", aes_string(fill='Rank')) + 
  xlab("Rank") + 
  ylab("Count") +
  theme(axis.text.x=element_text(angle=20, hjust=1)) +
  theme(legend.position="none")


plot_call2+coord_flip()+geom_text(aes(label = Count, y = Count), size = 3)