**IBM HR Employee Attrition: Predictive Modeling for Workforce Retention**

A STAT 515 final project that finds which factors predict employee attrition and compares models for flagging employees at risk of leaving.

Read the full report: https://rutvij1407.github.io/Final_STAT-515_HR-Attrition-Project/

**Team**

Rutvij Reddy Vakati and Sean Grieg.

**The problem**

Losing employees is expensive. HR teams want to know who is likely to leave and why, early enough to act.

**The data**

The IBM HR Analytics Employee Attrition and Performance dataset: 1,470 employees and 39 attributes. Only 16.1 percent of employees left (237 people), so the classes are imbalanced.

**Approach**

1. Standardise the columns and explore attrition by role, overtime, travel and tenure.
2. Answer three research questions: work life balance, career stagnation, and differences between departments.
3. Fit and compare Decision Trees, Random Forests, Logistic Regression and LASSO, using case weights to handle the imbalance.

**Key findings**

* Overtime is the dominant driver. 30.5 percent of overtime workers left, against 10.4 percent of the others, a relative risk of 2.9. It ranked first or highest in the decision tree, random forest, LASSO and gradient boosting models.
* Career stagnation compounds. Each year without a promotion raises the odds of leaving by about 15 percent, reaching roughly 77 percent higher at four years.
* Satisfaction matters differently by department. R&D shows strong links between all three satisfaction scores and staying, Sales shows selective effects, and HR is too small for reliable conclusions.
* Model results on held out data, by AUC: LASSO logistic regression 0.803 (the best), gradient boosting 0.783, random forest 0.672 and weighted logistic regression 0.665.

**Repository layout**

* index.qmd and projectcode.qmd: the Quarto report source
* HR_Attrition_Analysis_Standalone.R: the full analysis as one R script
* TECHNICAL_DOCUMENTATION.md: a detailed write up of methods and problems solved
* data: the dataset

**Tech stack**

R, Quarto, tidyverse, caret, rpart, randomForest, glmnet, pROC.
