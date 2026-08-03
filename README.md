![GitHub Repo Size](https://img.shields.io/github/repo-size/ssagastume11/gaming-addiction-analysis)
![Last Commit](https://img.shields.io/github/last-commit/ssagastume11/gaming-addiction-analysis)

# 🎮 Gaming Addiction Dataset Analysis

This project analyzes gaming behavior, screen-time habits, lifestyle factors, and psychological indicators associated with gaming addiction. The analysis explores how gaming habits relate to addiction severity, mental health, sleep quality, and productivity using R and the tidyverse. By following the six phases of the Google Data Analytics Process (Ask, Prepare, Process, Analyze, Share, and Act), the project transforms raw data into actionable insights that support healthier gaming habits and digital well-being.

---

## 📦 Dataset

**Source:** [Gaming Addiction Dataset on Kaggle](https://www.kaggle.com/datasets/ajitashwath/gaming-addiction-dataset)

**Provider:** Ajit Ashwath

**Filename:** `gaming_addiction_dataset.csv`

**Location:** Stored in the `data/` folder

### Fields include

- User ID
- Age
- Gender
- Country
- Occupation
- Income Level
- Years Gaming
- Preferred Genre
- Platform
- Device Type
- Rank Tier
- Daily Playtime Hours
- Weekly Play Sessions
- Late Night Sessions Hours
- Weekend Playtime Hours
- Consecutive Hours Max
- Multiplayer Ratio
- Toxic Chat Reports
- Rage Quit Frequency
- In-game Purchases
- Monthly Spending (USD)
- Subscription Status
- Stress Score
- Loneliness Score
- Dopamine Dependency Index
- Self-Control Score
- Impulsiveness Score
- Anxiety Level
- Depression Indicator
- Emotional Stability
- Sleep Hours
- Exercise Frequency Per Week
- Social Interaction Hours
- Relationship Status
- GPA or Performance Score
- Missed Deadlines
- Productivity Drop Percent
- Absenteeism Days
- Screen Time Total Hours
- Behavioral Cluster
- Addiction Score
- Addiction Binary
- Addiction Severity
- Burnout Probability
- Mental Health Risk Score

---

## 🔍 Business Task

The primary objective of this analysis is to determine which gaming behaviors and lifestyle factors are most strongly associated with higher levels of gaming addiction.

Specifically, this project aims to:

- Examine how gaming habits relate to addiction severity.
- Explore relationships between gaming time, sleep, and mental health.
- Compare addiction patterns across demographic groups.
- Investigate how gaming addiction affects productivity and academic or workplace performance.
- Provide actionable recommendations that promote healthy gaming behaviors and digital well-being.

---

## 📊 Tools & Technology

- **R & RStudio** for data analysis
- **tidyverse** (dplyr, tidyr, readr)
- **ggplot2** for data visualization
- **janitor** for data cleaning
- **RMarkdown** for reporting
- **Google Slides** for presentation
- **Git & GitHub** for version control

---

## 📁 Project Structure

```plaintext
gaming-addiction-analysis/
├── data/
│   └── gaming_addiction_dataset.csv
├── scripts/
│   ├── Step1_Ask.R
│   ├── Step2_Prepare.R
│   ├── Step3_Process.R
│   ├── Step4_Analyze.R
│   ├── Step5_Share.R
│   └── Step6_Act.R
├── reports/
│   └── Gaming_Addiction_Dataset_Analysis.Rmd
├── visuals/
│   ├── addiction_score_distribution.png
│   ├── daily_gaming_hours_vs_addiction_score.png
│   ├── sleep_hours_by_addiction_severity.png
│   ├── mental_health_risk_by_addiction_severity.png
│   ├── addiction_score_by_age_group.png
│   └── average_addiction_score_by_genre.png
├── presentation/
│   ├── Gaming_Addiction_Analysis_Google_Slides.md
│   └── Speaker_Notes.md
└── README.md
```

---

## 📈 Analysis Output

The final visualizations saved in the **visuals/** folder include:

- 🎮 Distribution of Gaming Addiction Scores
- ⏱️ Daily Gaming Hours vs. Addiction Score
- 😴 Sleep Hours by Addiction Severity
- 🧠 Mental Health Risk by Addiction Severity
- 👥 Addiction Score by Age Group
- 🎲 Average Addiction Score by Preferred Game Genre

These visualizations help explain how gaming behavior, lifestyle habits, and psychological indicators relate to gaming addiction.

---

## 📊 Visualizations

### 🎮 Distribution of Gaming Addiction Scores

![Gaming Addiction Score by Age Group](https://raw.githubusercontent.com/ssagastume11/gaming-addiction-analysis/refs/heads/main/visuals/average_addiction_score_by_age_group.png)

```
visuals/addiction_score_distribution.png
```

---

### ⏱️ Daily Gaming Hours vs. Addiction Score

*Insert image here*

```
visuals/daily_gaming_hours_vs_addiction_score.png
```

---

### 😴 Sleep Hours by Addiction Severity

*Insert image here*

```
visuals/sleep_hours_by_addiction_severity.png
```

---

### 🧠 Mental Health Risk by Addiction Severity

*Insert image here*

```
visuals/mental_health_risk_by_addiction_severity.png
```

---

### 👥 Addiction Score by Age Group

*Insert image here*

```
visuals/addiction_score_by_age_group.png
```

---

## 🧾 Presentation

The presentation included in the **presentation/** folder summarizes:

- Project overview
- Business problem
- Data preparation
- Data processing
- Statistical analysis
- Data visualizations
- Key findings
- Recommendations
- Future opportunities

---

## 💡 Key Findings

- Higher daily gaming hours generally correspond to higher addiction scores.
- Increased addiction severity is associated with poorer sleep patterns.
- Mental health risk tends to increase alongside addiction severity.
- Productivity decreases as addiction indicators become stronger.
- Lifestyle factors such as exercise and social interaction may help reduce addiction risk.

---

## ✅ Recommendations

- Promote balanced gaming schedules.
- Encourage healthy sleep habits.
- Monitor mental health among frequent gamers.
- Support exercise and social engagement.
- Develop early intervention programs using behavioral indicators.
- Encourage responsible gaming and digital wellness education.

---

## 🚀 Next Steps

Future enhancements for this project include:

- Build predictive machine learning models for addiction risk.
- Develop an interactive Shiny dashboard.
- Compare gaming addiction across countries and age groups.
- Perform time-series analysis if longitudinal data become available.
- Expand analysis using clustering and classification techniques.

---

## 🙌 Acknowledgments

- Dataset courtesy of **Ajit Ashwath** on Kaggle:
  https://www.kaggle.com/datasets/ajitashwath/gaming-addiction-dataset

- Analysis completed using **R**, **RStudio**, **tidyverse**, **ggplot2**, **RMarkdown**, and **GitHub**.

---

**Created by Sergio E. Sagastume**
