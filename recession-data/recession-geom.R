# recession plot
library(tidyverse)

recessions_tribble <- tribble(
  ~Peak, ~Trough,
  "1948-11-01", "1949-10-01",
  "1953-07-01", "1954-05-01",
  "1957-08-01", "1958-04-01",
  "1960-04-01", "1961-02-01",
  "1969-12-01", "1970-11-01",
  "1973-11-01", "1975-03-01",
  "1980-01-01", "1980-07-01",
  "1981-07-01", "1982-11-01",
  "1990-07-01", "1991-03-01",
  "2001-03-01", "2001-11-01",
  "2007-12-01", "2009-06-01")


recession_shade <- 
  geom_rect(data = recessions_tribble, 
            inherit.aes = F, 
            aes(xmin = Peak, 
                xmax = Trough, 
                ymin = -Inf, 
                ymax = +Inf), 
            fill = 'darkgray', 
            alpha = 0.4)