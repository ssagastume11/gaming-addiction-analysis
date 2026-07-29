# ============================================================

# Step 5: Share

# Gaming Addiction Data set Analysis

# ============================================================

# Objective:

# The goal of this step is to communicate key findings from the

# analysis using clear visualizations, summary tables, and

# stakeholder-friendly insights.

#

# Effective communication helps transform data into actionable

# information that researchers, educators, healthcare

# professionals, and digital wellness advocates can use to make

# informed decisions.

# ------------------------------------------------------------

# Key Actions:

# Create presentation-ready visualizations

# Generate summary tables

# Highlight key trends and patterns

# Save charts for reports and presentations

# Prepare findings for GitHub and Google Slides

# ------------------------------------------------------------

library(tidyverse)

# ------------------------------------------------------------

# Create Output Folder

# ------------------------------------------------------------

if (!dir.exists("visuals")) {
  dir.create("visuals")
}

# ------------------------------------------------------------

# Visualization 1:

# Average Addiction Score by Age Group

# ------------------------------------------------------------

age_chart <- gaming_processed %>%
  group_by(age_group) %>%
  summarise(
    avg_addiction_score =
      mean(addiction_score, na.rm = TRUE)
  ) %>%
  ggplot(
    aes(
      x = age_group,
      y = avg_addiction_score
    )
  ) +
  geom_col() +
  labs(
    title = "Average Addiction Score by Age Group",
    x = "Age Group",
    y = "Average Addiction Score"
  )

print(age_chart)

ggsave(
  "Backup datasets/archive/average_addiction_score_by_age_group.png",
  age_chart,
  width = 8,
  height = 5
)

# ------------------------------------------------------------

# Visualization 2:

# Daily Gaming Hours vs Addiction Score

# ------------------------------------------------------------

gaming_chart <- ggplot(
  gaming_processed,
  aes(
    x = daily_playtime_hours,
    y = addiction_score
  )
) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm") +
  labs(
    title = "Daily Gaming Hours vs Addiction Score",
    x = "Daily Gaming Hours",
    y = "Addiction Score"
  )

print(gaming_chart)

ggsave(
  "Backup datasets/archive/daily_gaming_hours_vs_addiction_score.png",
  gaming_chart,
  width = 8,
  height = 5
)

# ------------------------------------------------------------

# Visualization 3:

# Sleep Hours by Addiction Severity

# ------------------------------------------------------------

sleep_chart <- ggplot(
  gaming_processed,
  aes(
    x = addiction_severity,
    y = sleep_hours
  )
) +
  geom_boxplot() +
  labs(
    title = "Sleep Hours by Addiction Severity",
    x = "Addiction Severity",
    y = "Sleep Hours"
  )

print(sleep_chart)

ggsave(
  "Backup datasets/archive/sleep_hours_by_addiction_severity.png",
  sleep_chart,
  width = 8,
  height = 5
)

# ------------------------------------------------------------

# Visualization 4:

# Mental Health Risk by Addiction Severity

# ------------------------------------------------------------

mental_health_chart <- ggplot(
  gaming_processed,
  aes(
    x = addiction_severity,
    y = mental_health_risk_score
  )
) +
  geom_boxplot() +
  labs(
    title = "Mental Health Risk by Addiction Severity",
    x = "Addiction Severity",
    y = "Mental Health Risk Score"
  )

print(mental_health_chart)

ggsave(
  "Backup datasets/archive/mental_health_risk_by_addiction_severity.png",
  mental_health_chart,
  width = 8,
  height = 5
)

# ------------------------------------------------------------

# Create Executive Summary Table

# ------------------------------------------------------------

executive_summary <- gaming_processed %>%
  group_by(addiction_severity) %>%
  summarise(
    avg_addiction_score =
      round(mean(addiction_score, na.rm = TRUE), 2),
    avg_daily_playtime =
      round(mean(daily_playtime_hours, na.rm = TRUE), 2),
    avg_sleep_hours =
      round(mean(sleep_hours, na.rm = TRUE), 2),
    avg_stress_score =
      round(mean(stress_score, na.rm = TRUE), 2),
    avg_productivity_drop =
      round(mean(productivity_drop_percent, na.rm = TRUE), 2),
    total_users = n()
    
  )

print(executive_summary)

# Save Summary Table

write_csv(
  executive_summary,
  "archive/executive_summary_table.csv"
)

# ------------------------------------------------------------

# Key Findings for Presentation

# ------------------------------------------------------------

cat("
KEY FINDINGS

1. Daily gaming hours show a relationship with addiction scores.

2. Higher addiction severity is associated with changes in sleep patterns.

3. Mental health risk tends to increase as addiction severity increases.

4. Certain age groups may demonstrate higher average addiction scores.

5. Productivity impacts become more noticeable among highly addicted gamers.
   ")

# ============================================================

# Outcome:

# A collection of stakeholder-friendly visualizations,

# summary tables, and presentation-ready insights that

# communicate the key findings of the Gaming Addiction

# Data set Analysis project.

# ============================================================