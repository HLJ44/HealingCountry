
process_data_LP <- function(location) {
  selected_cols <- c("Date", "Day", "T.Max", "T.Min", "Rain", "Evap", "Radn", "VP", "RHmaxT", "RHminT" )
  file_name <- paste0("HealingCountry/Climate Data/LP_", location, "_grid.txt")
  file_content <- readLines(file_name)
  filtered_content <- file_content[!grepl('^"', file_content)]
  col_names <- scan(text = filtered_content[1], what = character(), sep = "", quiet = TRUE)
  data <- read.table(text = paste(filtered_content[-c(1,2)], collapse = "\n"), 
                     header = FALSE, col.names = col_names, stringsAsFactors = FALSE)
  
  data$Date <- as.Date(as.character(data$Date), format = "%Y%m%d")
  num_cols <- setdiff(names(data), c("Date", "Date2"))
  data[num_cols] <- lapply(data[num_cols], as.numeric)
  data <- data[, selected_cols, drop = FALSE]
  
  data <- data %>%
    mutate(
      day_of_year = as.numeric(format(Date, "%j")),
      year = as.numeric(format(Date, "%Y"))
    )
  
  data
}

process_data_ABS <- function(){
  file_path <- "./Climate Data/abs_population_sa.xlsx"
  population_data <- read_excel(file_path, sheet = "Table 1", skip = 5)
  first_row <- population_data[1, ]
  colnames(population_data)[1:8] <- first_row[1:8]
  population_data <- population_data[-1, ]
  population_data
}