mt<-cbind(met$value[[4]]$Site,met$value[[4]]$I.O)

mt$V1 <- factor(mt$V1)
mt$V2 <- factor(mt$V2)

g1 <- ggplot(mt, aes_string(x='V1', y='V2')) + 
      geom_bar(stat="identity", aes_string(fill='V1')) + 
       xlab("Site") + 
       ylab("I.O") +
       theme(axis.text.x=element_text(angle=20, hjust=1)) +
       theme(legend.position="none")
