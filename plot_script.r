#plotscripts..
#rough script in terms of
library(ggplot2)
Task<-factor(output$value[[1]]$Task)
Mpitime<-factor(output$value[[1]]$MPITime)
qplot(Task,Mpitime)
c<-ggplot(Task,Mpitime)
c+geom_bar()
taskvsmpitime<-data.frame(Task=Task,Mpitime=Mpitime)
g1 <- ggplot(taskvsmpitime, aes_string(x='Task', y='Mpitime')) + 
  geom_bar(stat="identity", aes_string(fill='Task')) + 
  xlab("Task") + 
  ylab("Mpitime") +
  theme(axis.text.x=element_text(angle=20, hjust=1)) +
  theme(legend.position="none")

g1
