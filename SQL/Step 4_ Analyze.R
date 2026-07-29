# ============================================================

# Step 4: Analyze

# Gaming Addiction Dataset Analysis

# ============================================================

# Objective:

# The goal of this step is to identify patterns, trends, and

# relationships associated with gaming addiction by analyzing

# gaming habits, mental health indicators, lifestyle factors,

# and productivity outcomes.

#

# Statistical summaries and visualizations will be used to

# uncover factors that contribute to higher addiction scores

# and explore how addiction varies across demographic groups.

# ------------------------------------------------------------

# Key Actions:

# Generate descriptive statistics

# Analyze addiction severity trends

# Examine relationships between gaming behavior and addiction

# Evaluate mental health and lifestyle factors

# Compare addiction scores across demographic groups

# Create visualizations to communicate findings

# ------------------------------------------------------------

library(tidyverse)

# ------------------------------------------------------------

# Descriptive Statistics

# ------------------------------------------------------------

summary(
  gaming_processed %>%
    select(
      addiction_score,
      daily_playtime_hours,
      sleep_hours,
      stress_score,
      loneliness_score,
      productivity_drop_percent,
      mental_health_risk_score
    )
)

# ------------------------------------------------------------

# Addiction Severity Summary

# ------------------------------------------------------------

severity_summary <- gaming_processed %>%
  group_by(addiction_severity) %>%
  summarise(
    avg_addiction_score =
      mean(addiction_score, na.rm = TRUE),
    avg_daily_playtime =
      mean(daily_playtime_hours, na.rm = TRUE),
    avg_sleep_hours =
      mean(sleep_hours, na.rm = TRUE),
    avg_stress_score =
      mean(stress_score, na.rm = TRUE),
    avg_productivity_drop =
      mean(productivity_drop_percent, na.rm = TRUE),
    total_users = n()
    
  )

print(severity_summary)

# ------------------------------------------------------------

# Correlation Analysis

# ------------------------------------------------------------

correlation_data <- gaming_processed %>%
  select(
    addiction_score,
    daily_playtime_hours,
    sleep_hours,
    stress_score,
    loneliness_score,
    dopamine_dependency_index,
    self_control_score,
    productivity_drop_percent,
    mental_health_risk_score
  )

cor(correlation_data, use = "complete.obs")

# ------------------------------------------------------------

# Visualization 1:

# Addiction Score Distribution

# ------------------------------------------------------------

ggplot(
  gaming_processed,
  aes(x = addiction_score)
) +
  geom_histogram(bins = 20) +
  labs(
    title = "Distribution of Addiction Scores",
    x = "Addiction Score",
    y = "Number of Users"
  )

# ------------------------------------------------------------

# Visualization 2:

# Daily Gaming Hours vs Addiction Score

# ------------------------------------------------------------

ggplot(
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

# ------------------------------------------------------------

# Visualization 3:

# Sleep Hours by Addiction Severity

# ------------------------------------------------------------

ggplot(
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

# ------------------------------------------------------------

# Visualization 4:

# Addiction Score by Age Group

# ------------------------------------------------------------

ggplot(
  gaming_processed,
  aes(
    x = age_group,
    y = addiction_score
  )
) +
  geom_boxplot() +
  labs(
    title = "Addiction Score by Age Group",
    x = "Age Group",
    y = "Addiction Score"
  )

# ------------------------------------------------------------

# Visualization 5:

# Mental Health Risk by Addiction Severity

# ------------------------------------------------------------

ggplot(
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

# ------------------------------------------------------------

# Visualization 6:

# Average Addiction Score by Preferred Genre

# ------------------------------------------------------------

genre_summary <- gaming_processed %>%
  group_by(preferred_genre) %>%
  summarise(
    avg_addiction_score =
      mean(addiction_score, na.rm = TRUE)
  ) %>%
  arrange(desc(avg_addiction_score))

ggplot(
  genre_summary,
  aes(
    x = reorder(
      preferred_genre,
      avg_addiction_score
    ),
    y = avg_addiction_score
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Average Addiction Score by Genre",
    x = "Game Genre",
    y = "Average Addiction Score"
  )

# ============================================================

# Outcome:

# Statistical summaries and visualizations that identify

# patterns between gaming addiction, gaming behavior,

# lifestyle habits, mental health indicators, and

# productivity outcomes.

# ============================================================
