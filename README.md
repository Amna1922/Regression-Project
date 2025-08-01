# Monthly Expenditure Analysis – Regression Project

## Introduction
Understanding factors that influence monthly expenditure is essential for effective personal finance management. This project analyzes the relationship between **Monthly Expenditure** and variables such as **age, food expense, stationery, transport, internet, entertainment, personal goods, clothing, and savings (binary)**.

### Data Collection
- Surveyed **BSDS 21st batch of FAST-NUCES** using **Google Forms**.

### Tools Used
- **Google Forms** (Data Collection)
- **Microsoft Excel** (Data Cleaning)
- **R Studio** (Multiple Linear Regression Analysis)
- **Google Docs** (Documentation)

### Objective
Identify factors impacting monthly spending patterns and provide actionable financial insights.

## Literature Review
### The Income-Expenditure-Saving Analyses of University Students
- Highlights strong linkage between income and expenditure.
- Emphasizes influence of financial knowledge and decision-making skills.

### A Study on Student Budgeting and Spending Behavior (Aizawl)
- Family background significantly influences spending.
- Rising living costs and poor budgeting habits lead to overspending.
- Lifestyle factors like westernization affect spending patterns.

### Common Variables across Studies
- **Dependent Variable**: Monthly Expenditure
- **Independent Variables**: Family background, financial knowledge, attitudes, lifestyle, income, savings.

## Regression Model and Variables
### Multiple Linear Regression Model
- **Dependent Variable**: Monthly Expenditure
- **Independent Variables**:
  - Food Expense
  - Stationery
  - Transportation
  - Internet
  - Entertainment
  - Personal Goods
  - Clothing

### Model Performance
- **R-squared (R²)**: 0.7 (70% variance explained)

### Key Predictors
- **Food Expense**: Strong positive influence.
- **Transportation**: Significant impact.
- **Entertainment & Internet**: Moderate contribution.
- **Clothing & Savings**: Lesser impact.

## Data Description, Results, and Discussion
### Boxplot Insights
- **Outliers**: Internet & transport costs show high outliers.
- **Skewness**: Food & entertainment expenses are positively skewed.
- **Variability**: High variability in transportation & total expenditure.

### Data Cleaning
- Missing numeric values replaced with mean.
- Duplicates checked but not explicitly removed.
- Outlier detection through IQR analysis.

### Correlation Analysis
- **Strong Correlations**:
  - Food Expense ↔ Monthly Expenditure (0.828)
  - Transportation ↔ Monthly Expenditure
- **Negative Correlations**:
  - Entertainment ↔ Monthly Expenditure (-0.378)

### Scatterplot Patterns
- Linear relationships in food and transport expenses.
- Clusters observed in personal goods & savings.
- Trade-off patterns in entertainment expenditure.

## Conclusion
- **Key Drivers**: Food expenses and transportation are primary influencers of monthly expenditure.
- **Outliers**: Internet and clothing costs show unique behavior patterns.
- **Insights**: Optional expenses dominate spending variability; fixed costs have minor influence.
- Significant correlation between lifestyle choices and overall spending habits.

## References
1. Lalmuanpuia, N. (2021). *A Study on Student Budgeting and Spending Behaviour Among College Students of Aizawl*. [Link]
2. Norasibah, A. et al. *The Income-Expenditure-Saving Analyses of University Students*. International Journal of Psychological Rehabilitation, 24, 2020. DOI.........................
