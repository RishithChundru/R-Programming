plot9<-ggplot(sub6, mapping=aes(x=Hour,
                                y=transaction_qty)) +
  geom_line(size=1, group=1, color="palevioletred") +
  geom_text(aes(label=transaction_qty), vjust=0.5, check_overlap = TRUE) +
  labs(title="Temporal Analysis - III",subtitle = "This analyzes the trend of sales of products on a hourly basis", x="Hour",y="Total Transaction Quantity")