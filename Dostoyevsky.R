text.v <- scan("Dostoyevsky.txt", what="character", sep="\n")
text.v
text.v [1]
text.v [2]
start.v <- which(text.v == "EL CRIMEN Y EL CASTIGO")
start.v
text.v [38]
end.v <- which(text.v == "FIN.")
end.v
start.metadata.v <- text.v[1:37]
start.metadata.v
end.metadata.v <- text.v[(end.v+1):length(text.v)]
end.metadata.v
metadata.v <- c(start.metadata.v, end.metadata.v)
metadata.v
novel.lines.v <-  text.v[start.v:end.v]
novel.lines.v
novel.v <- paste(novel.lines.v, collapse=" ")
novel.v
novel.lower.v <- tolower(novel.v)
novel.lower.v
moby.words.l <- strsplit(novel.lower.v, "\\W")
moby.words.l
moby.word.v <- unlist(moby.words.l)
moby.word.v
not.blanks.v  <-  which(moby.word.v!="")
not.blanks.v
moby.word.v <-  moby.word.v[not.blanks.v]
moby.word.v
length(moby.word.v)
raskolnikoff.v <- which(moby.word.v == "raskolnikoff")
length(raskolnikoff.v)
raskolnikoff.v
moby.word.v[130255]
w.count.v<-rep(NA,length(moby.word.v))
length(w.count.v)
w.count.v[raskolnikoff.v]<-1
w.count.v
w.count.v[120429]
w.count.v[121170]
plot(w.count.v, main = "Dispersion", xlab = "Novel time", ylab = "raskolnikoff", type = "h", ylim=c(1,0), yaxt = "n")
moby.word.v <-  moby.word.v[not.blanks.v]

total.words.v <- length(moby.word.v)
moby.freqs.t <- table(moby.word.v)
sorted.moby.freqs.t <- sort(moby.freqs.t , decreasing=T)
sorted.moby.freqs.t[1:20]
plot(sorted.moby.freqs.t[1:20])
