#calls vs total count

#rank vs number of calls
Calls<-output$value[[5]]$Name
Count<-output$value[[5]]$Count
callvscount<-data.frame(Name=Calls,Count=Count)
console<-ddply(callvscount,"Name",numcolwise(sum))

plot_call<- ggplot(console, aes_string(x='Name', y='Count')) + 
  geom_bar(stat="identity", aes_string(fill='Name')) + 
  xlab("Name") + 
  ylab("Count") +
  theme(axis.text.x=element_text(angle=20, hjust=1)) +
  theme(legend.position="none")


plot_call+coord_flip()+geom_text(aes(label = Count, y = Count), size = 3)

