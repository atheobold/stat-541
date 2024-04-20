
library(DBI)
library(tidyverse)

# Create an ephemeral in-memory RSQLite database
chinook <- dbConnect(RSQLite::SQLite(),
                 here::here("week-4",
                            "chinook",
                            "chinook.db")
                 )

dbListTables(chinook)

# How many observations / rows are in the `employees` table?

employees <- dbReadTable(conn = chinook,
                          name = "employees")

nrow(employees)

# How many different job titles are included in the `employees` table?

distinct(employees, Title)

# What is the average of the `Total` variable in the `invoices` table?

invoices <- dbReadTable(conn = chinook,
                        name = "invoices")


summarize(invoices,
          mean_total = mean(Total)
          )

