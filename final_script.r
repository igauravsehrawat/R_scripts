t<-length(x)
hmuch<-length(x)-1
for (w in 1:hmuch) {
      id.start=t[i]
      id.end=t[i+1]
      x.sub <- x[(id.start + 2):(id.end - 2)]
      loop<-(id.end-1)-(id.start+2)
      
      #the objects starting with "c" are actually modified/copied from orginal objects
      #filtering the 
      l <- lapply(seq.int(loop), function(i) { tmp <- unlist(strsplit(x.sub[i], split=" ")); tmp[which(tmp!="")] })
      head<-as.list(l[[1]])
      cloop<-loop-1
      copyl<-l[2:loop]
      first_stat<-matrix(ncol=4,nrow=loop-1,0)
      colnames(first_stat)<-c(head)
      #changing datatypes for plotting
      for (j in 1:cloop)
        first_stat[j,] <- copyl[[j]]
      first<-as.data.frame(first_stat)
    
}