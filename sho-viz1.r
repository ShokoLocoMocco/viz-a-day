library(tidyverse)

#data from https://s3.amazonaws.com/tripdata/index.html previously unzipped on local drive

dat2002 <- as_tibble(read_csv("202002-citibike-tripdata.csv"))
dat2003 <- as_tibble(read_csv("202003-citibike-tripdata.csv"))
dat2004 <- as_tibble(read_csv("202004-citibike-tripdata.csv"))
dat2005 <- as_tibble(read_csv("202005-citibike-tripdata.csv"))
dat2006 <- as_tibble(read_csv("202006-citibike-tripdata.csv"))
dat2007 <- as_tibble(read_csv("202007-citibike-tripdata.csv"))
dat2008 <- as_tibble(read_csv("202008-citibike-tripdata.csv"))
dat2009 <- as_tibble(read_csv("202009-citibike-tripdata.csv"))
dat2010 <- as_tibble(read_csv("202010-citibike-tripdata.csv"))
dat2011 <- as_tibble(read_csv("202011-citibike-tripdata.csv"))
dat2012 <- as_tibble(read_csv("202012-citibike-tripdata.csv"))
dat2101 <- as_tibble(read_csv("202101-citibike-tripdata.csv"))
dat2102 <- as_tibble(read_csv("202102-citibike-tripdata.csv"))
dat2103 <- as_tibble(read_csv("202103-citibike-tripdata.csv"))
dat2104 <- as_tibble(read_csv("202104-citibike-tripdata.csv"))
dat2105 <- as_tibble(read_csv("202105-citibike-tripdata.csv"))
dat2106 <- as_tibble(read_csv("202106-citibike-tripdata.csv"))
dat2107 <- as_tibble(read_csv("202107-citibike-tripdata.csv"))
dat2108 <- as_tibble(read_csv("202108-citibike-tripdata.csv"))
dat2109 <- as_tibble(read_csv("202109-citibike-tripdata.csv"))
dat2110 <- as_tibble(read_csv("202110-citibike-tripdata.csv"))
dat2111 <- as_tibble(read_csv("202111-citibike-tripdata.csv"))
dat2112 <- as_tibble(read_csv("202112-citibike-tripdata.csv"))
dat2201 <- as_tibble(read_csv("202201-citibike-tripdata.csv"))

save(dat2002, dat2003, dat2004, dat2005, dat2006, dat2007, dat2008, dat2009, dat2010, dat2011, dat2012, dat2101, dat2102, dat2103, dat2104, dat2105, dat2106, dat2107, dat2108, dat2109, dat2110, dat2111, dat2112, dat2201, file = "cs_bike.RData")

load("cs_bike.RData")


# create a data.frame

months <- c("2020/02", "2020/03", "2020/04", "2020/05", "2020/06", "2020/07", "2020/08", "2020/09", "2020/10", "2020/11", "2020/12", "2021/01", "2021/02", "2021/03", "2021/04", "2021/05", "2021/06", "2021/07", "2021/08", "2021/09", "2021/10", "2021/11", "2021/12", "2022/01")

total_rides <- c(dim(dat2002)[1], dim(dat2003)[1], dim(dat2004)[1], dim(dat2005)[1], dim(dat2006)[1], dim(dat2007)[1], dim(dat2008)[1], dim(dat2009)[1], dim(dat2010)[1], dim(dat2011)[1], dim(dat2012)[1], dim(dat2101)[1], dim(dat2102)[1], dim(dat2103)[1], dim(dat2104)[1], dim(dat2105c)[1], dim(dat2106)[1], dim(dat2107)[1], dim(dat2108)[1], dim(dat2109)[1], dim(dat2110)[1], dim(dat2111)[1], dim(dat2112)[1], dim(dat2201)[1])

df_month_total <- data.frame(months, total_rides)

ggplot(df_month_total, aes(x = months, y = total_rides)) +
  geom_line(group = 1, color = "#D9261C") +
  labs(title = "Total Usage of NYC Bikeshare from Feb. 2020 to Jan. 2022", x = "Year/Month", y = "", caption = "source: https://s3.amazonaws.com/tripdata/index.html") +
  theme(text = element_text(color = "white"),
        axis.text.x = element_text(angle = 45, hjust = 1,  color = "white"),
        axis.text.y = element_text(angle = 45, hjust = 1, color = "white"),
        plot.background = element_rect(fill = "#003870"),
        panel.background = element_rect(fill = "aliceblue"),
        strip.background.x = element_rect(fill = "white"),
        plot.title = element_text(size = 18, face = "bold", color = "white"))