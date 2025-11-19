library(datos)

vuelos <- vuelos

library(tidyverse)

vuelos |>
  group_by(aerolinea) |> 
  filter(!is.na(atraso_salida)) |> 
  summarise(mean = mean(atraso_salida))
