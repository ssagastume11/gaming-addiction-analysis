# ============================================================

# Step 2: Prepare

# Gaming Addiction Data set Analysis

# ============================================================

# Objective:

# The goal of this step is to load, clean, validate, and organize

# the Gaming Addiction Data set to ensure it is ready for accurate

# analysis and visualization.

#

# This includes checking data quality, handling missing values,

# verifying data types, removing duplicates, and preparing the

# data set for analysis of gaming addiction behaviors, mental health,

# productivity, and lifestyle factors.

# ------------------------------------------------------------

# Key Actions:

# Import the data set into RStudio

# Inspect the structure and data types

# Check for missing values

# Handle missing categorical values

# Remove duplicate records

# Convert categorical variables to factors

# Create age groups for demographic analysis

# * Save a cleaned data set for future analysis

# ------------------------------------------------------------

# Load Required Libraries

library(tidyverse)

# ------------------------------------------------------------

# Import Data set

# ------------------------------------------------------------

gaming_raw <- read_csv("data/gaming_addiction.csv")

# Preview Data set

head(gaming_raw)

# View Structure

glimpse(gaming_raw)

# ------------------------------------------------------------

# Check for Missing Values

# ------------------------------------------------------------

colSums(is.na(gaming_raw))

# ------------------------------------------------------------

# Remove Duplicate Records

# ------------------------------------------------------------

gaming_clean <- gaming_raw %>%
  distinct()

# ------------------------------------------------------------

# Replace Missing Categorical Values

# ------------------------------------------------------------

gaming_clean <- gaming_clean %>%
  mutate(
    subscription_status = replace_na(subscription_status, "Unknown"),
    addiction_severity = replace_na(addiction_severity, "Unknown"),
    depression_indicator = replace_na(depression_indicator, 0)
  )

# ------------------------------------------------------------

# Handle Missing Performance Scores

# ------------------------------------------------------------

gaming_clean <- gaming_clean %>%
  filter(!is.na(gpa_or_performance_score))

# ------------------------------------------------------------

# Convert Character Variables to Factors

# ------------------------------------------------------------

gaming_clean <- gaming_clean %>%
  mutate(across(where(is.character), as.factor))

# ------------------------------------------------------------

# Create Age Groups

# ------------------------------------------------------------

gaming_clean <- gaming_clean %>%
  mutate(
    age_group = case_when(
      age < 18 ~ "Under 18",
      age >= 18 & age <= 24 ~ "18-24",
      age >= 25 & age <= 34 ~ "25-34",
      age >= 35 & age <= 44 ~ "35-44",
      TRUE ~ "45+"
    )
  )

# ------------------------------------------------------------

# Verify Cleaned Data set

# ------------------------------------------------------------

summary(gaming_clean)

# Check Remaining Missing Values

colSums(is.na(gaming_clean))

# ------------------------------------------------------------

# Save Cleaned Data set

# ------------------------------------------------------------

write_csv(
  gaming_clean,
  "Backup datasets/archive/gaming_addiction.csv"
)

# ============================================================

# Outcome:

# A cleaned and structured data set ready for processing,

# analysis, visualization, and reporting.

# ============================================================
