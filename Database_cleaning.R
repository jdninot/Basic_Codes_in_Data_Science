# Get dimensions of the dataframe
dim(df)

# Get a glimpse of the first few rows
head(df)

# Get summary statistics for each column
summary(df)

# Returns the structure of the dataframe
str(df)

# Count NAs by columns
colSums(is.na(df))

# Count NAs by rows
rowSums(is.na(df))

# Remove NAs
df <- na.omit(df)

# Remove duplicate rows
df <- unique(df)

# Remove duplicate columns
df <- df[, !duplicated(colnames(df))]

# Replace characters inside the df
df <- gsub("old_char", "new_char", df)

# Rename columns
colnames(df) <- c("new_colname1", "new_colname2", ...)

# Define the function to apply
my_function <- function(x) {
  # Function code here
}

# Apply the function to each column of the dataframe
df_new <- as.data.frame(apply(df, 2, my_function))
df_new <- as.data.frame(lapply(df, my_function))
df_new <- sapply(df, my_function)

# Select columns
df_cols <- select(df, col1, col2, ...)

# Apply the function to the selected columns
df_new <- as.data.frame(apply(df_cols, 2, my_function))

# Load dplyr package
library(dplyr)

# Apply function to specific columns
df_new <- df %>% 
  mutate_at(vars(col1, col2, ...), my_function)

# Get a frequency table for a categorical variable
table(df$column_name)

# Get a histogram for a numeric variable
hist(df$column_name)

