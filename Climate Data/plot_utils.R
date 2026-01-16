plot_reveal <- function(data, mapped_location){
  ggplot(data, aes(x = day_of_year, y = T.Max, group = year, color = T.Max)) +
    geom_line(size = 1) +
    scale_x_continuous(
      limits = c(0, 365), 
      breaks = seq(0, 365, by = 30),  
      labels = seq(0, 365, by = 30) 
    ) +
    scale_y_continuous(
      name = "Max Temperature (°C)",
      limits = c(min(data$T.Max, na.rm = TRUE), max(data$T.Max, na.rm = TRUE))
    ) +
    coord_polar(theta = "x", start = 0, direction = 1) +
    labs(
      title = paste(mapped_location, "- Maximum Daily Temperatures Throughout the Years"),
      subtitle = 'Year: {frame_along}', 
      x = "Day of Year",
      y = NULL, 
      color = "Max Temperature (°C)"
    ) +
    scale_color_gradientn(colors = c("blue", "cyan", "yellow", "orange", "red")) +
    theme_minimal() +
    theme(
      panel.grid.minor = element_blank(),
      panel.grid.major = element_blank(),
      axis.title.y = element_blank(),  
      axis.text.y = element_blank(),  
      axis.ticks.y = element_blank()
    ) +
    transition_reveal(along = year) + 
    ease_aes('linear')
}

plot_shadow <- function(data, mapped_location){
  ggplot(data, aes(x = day_of_year, y = T.Max, group = year, color = T.Max)) +
    geom_line(size = 1) +
    scale_x_continuous(
      limits = c(0, 365), 
      breaks = seq(0, 365, by = 30),  
      labels = seq(0, 365, by = 30) 
    ) +
    scale_y_continuous(limits = c(min(data$T.Max, na.rm = TRUE), max(data$T.Max, na.rm = TRUE))) +
    coord_polar(start = 0, direction = 1) +
    labs(
      title = paste(mapped_location, "- Maximum Daily Temperatures Throughout the Years"),
      subtitle = 'Year: {frame_time}',  
      x = "Day of Year",
      y = NULL,  
      color = "Max Temperature (°C)"
    ) +
    scale_color_gradientn(colors = c("blue", "cyan", "yellow", "orange", "red")) +
    theme_minimal() +
    theme(
      panel.grid.minor = element_blank(),
      panel.grid.major = element_blank(),
      axis.title.y = element_blank(), 
      axis.text.y = element_blank(),  
      axis.ticks.y = element_blank()  
    ) +
    transition_time(year) +  
    ease_aes('linear') +
    shadow_mark(alpha = 0.1, size = 1)  # Previous years at 50% opacity
}