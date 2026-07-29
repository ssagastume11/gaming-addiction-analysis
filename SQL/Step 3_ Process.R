# ============================================================

# Step 3: Process

# Gaming Addiction Data set Analysis

# ============================================================

# Objective:

# The goal of this step is to transform the cleaned data set into

# an analysis-ready format by creating new variables, categorizing

# addiction levels, grouping demographic information, and preparing

# summary metrics for visualization and statistical analysis.

#

# This step helps identify behavioral patterns and relationships

# between gaming habits, mental health indicators, lifestyle

# factors, and gaming addiction outcomes.

# ------------------------------------------------------------

# Key Actions:

# Create gaming intensity categories

# Create sleep quality categories

# Create productivity impact categories

# Create mental health risk categories

# Generate addiction-level summary tables

# Create an analysis-ready data set

# ------------------------------------------------------------

library(tidyverse)
library(janitor)

# ------------------------------------------------------------

# Load Cleaned Data set

# ------------------------------------------------------------

gaming_processed <- gaming_clean

# ------------------------------------------------------------

# Create Gaming Intensity Categories

# ------------------------------------------------------------

gaming_processed <- gaming_processed %>%
  mutate(
    gaming_intensity = case_when(
      daily_playtime_hours < 2 ~ "Low",
      daily_playtime_hours >= 2 &
        daily_playtime_hours < 4 ~ "Moderate",
      daily_playtime_hours >= 4 &
        daily_playtime_hours < 6 ~ "High",
      TRUE ~ "Very High"
    )
  )

# ------------------------------------------------------------

# Create Sleep Quality Categories

# ------------------------------------------------------------

gaming_processed <- gaming_processed %>%
  mutate(
    sleep_category = case_when(
      sleep_hours < 6 ~ "Poor Sleep",
      sleep_hours >= 6 &
        sleep_hours < 8 ~ "Adequate Sleep",
      TRUE ~ "Healthy Sleep"
    )
  )

# ------------------------------------------------------------

# Create Productivity Impact Categories

# ------------------------------------------------------------

gaming_processed <- gaming_processed %>%
  mutate(
    productivity_impact = case_when(
      productivity_drop_percent < 10 ~ "Low Impact",
      productivity_drop_percent >= 10 &
        productivity_drop_percent < 30 ~ "Moderate Impact",
      TRUE ~ "High Impact"
    )
  )

# ------------------------------------------------------------

# Create Mental Health Risk Categories

# ------------------------------------------------------------

gaming_processed <- gaming_processed %>%
  mutate(
    mental_health_risk_category = case_when(
      mental_health_risk_score < 33 ~ "Low Risk",
      mental_health_risk_score >= 33 &
        mental_health_risk_score < 66 ~ "Moderate Risk",
      TRUE ~ "High Risk"
    )
  )

# ------------------------------------------------------------

# Create Age Group Factor

# ------------------------------------------------------------

gaming_processed <- gaming_processed %>%
  mutate(
    age_group = factor(
      age_group,
      levels = c(
        "Under 18",
        "18-24",
        "25-34",
        "35-44",
        "45+"
      )
    )
  )

# ------------------------------------------------------------

# Standardize Column Names

# ------------------------------------------------------------

gaming_processed <- gaming_clean %>%
  clean_names()

names(gaming_processed)

table(gaming_processed$addiction_severity)

"addiction_severity" %in% names(gaming_processed)


# ------------------------------------------------------------

# Create Addiction Summary Table

# ------------------------------------------------------------

addiction_summary <- gaming_processed %>%
  group_by(addiction_severity) %>%
  summarise(
    avg_daily_playtime = mean(daily_playtime_hours, na.rm = TRUE),
    avg_sleep_hours = mean(sleep_hours, na.rm = TRUE),
    avg_stress_score = mean(stress_score, na.rm = TRUE),
    avg_loneliness_score = mean(loneliness_score, na.rm = TRUE),
    avg_productivity_drop = mean(productivity_drop_percent, na.rm = TRUE),
    avg_mental_health_risk = mean(mental_health_risk_score, na.rm = TRUE),
    total_users = n(),
    .groups = "drop"
  )

addiction_summary

# View Summary Table

print(addiction_summary)

# ------------------------------------------------------------

# Create Occupation Summary Table

# ------------------------------------------------------------

occupation_summary <- gaming_processed %>%
  group_by(occupation) %>%
  summarise(
    avg_addiction_score =
      mean(addiction_score, na.rm = TRUE),
    avg_daily_playtime =
      mean(daily_playtime_hours, na.rm = TRUE),
    avg_sleep_hours =
      mean(sleep_hours, na.rm = TRUE),
    total_users = n()
    
  ) %>%
  arrange(desc(avg_addiction_score))

# View Occupation Summary

print(occupation_summary)

# ------------------------------------------------------------

# Save Processed Data set

# ------------------------------------------------------------

write_csv(
  gaming_processed,
  "Backup datasets/archive/gaming_addiction_processed.csv"
)

# ============================================================

# Outcome:

# A fully processed data set with new categories and summary

# tables that are ready for visualization, trend analysis,

# and identifying factors associated with gaming addiction.

# ============================================================
