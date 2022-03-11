# class 5 Data Visualization
plot(1:5)

#install.packages("ggplot2")
library(ggplot2)

plot(cars)

#every gg plot has at least 3 layers: data + aes + geoms 
p<- ggplot(data = cars) +
  aes(speed, dist) +
  geom_point()

p + geom_smooth(method="lm")
p+ labs(title="Speed vs Stopping Distance in Cars", subtitle = "superfluous subtitle", caption = "caption!")

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

p2<- ggplot(genes)+
  aes(Condition1, Condition2, col=State)+
  geom_point(alpha=0.5, size=0.1)+
  theme_bw()

p2 + scale_colour_manual( values=c("blue","gray","red")) + labs(title="Gene Expression")
