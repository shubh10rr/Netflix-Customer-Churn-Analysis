🎬 Netflix Customer Churn Analysis (SQL + Power BI)

📌 Project Overview

This project focuses on analyzing **customer churn behavior** for a Netflix-like subscription platform. The goal is to identify **who is churning, why they are churning, and which users are at high risk of churn**, using **SQL for analysis** and **Power BI for visualization & storytelling**.

The analysis follows an **end-to-end data analytics workflow**, similar to real-world industry projects.

---

🎯 Business Objective

* Understand overall churn trends
* Identify high-risk customer segments
* Analyze the impact of user behavior, engagement, and inactivity
* Support **data-driven retention strategies**

---

🧠 Business Questions Answered

The following business questions were framed and answered using **SQL**, and the same insights were visualized using **Power BI dashboards**:

1. What is the **overall churn rate**?
2. How does churn vary by **subscription type**?
3. How does churn differ across **regions**?
4. Which **age groups** have the highest churn?
5. How does **user activity (watch time)** impact churn?
6. What is the impact of **last login / inactivity** on churn?
7. Is churn higher on specific **devices**?
8. Is the proportion of **low-engagement users** higher than the overall proportion?
9. Which customers are at **high churn risk**?

---

🛠 Tools & Technologies Used

* **SQL**: Business question analysis, churn calculations, segmentation logic
* **Power BI**: Interactive dashboards, DAX measures, storytelling
* **Power Query**: Data cleaning, transformation, and feature creation
* **CSV Dataset**: Netflix customer-level churn data

---

🔍 SQL Analysis Summary

SQL was used to:

* Calculate churn rate and segment-wise churn
* Group users by age, plan, region, device, and activity level
* Analyze inactivity patterns using last login data
* Identify low-engagement and high-risk churn users

> SQL served as the **logic and validation layer** for all insights shown in the dashboard.

---

📊 Power BI Dashboard Structure

The Power BI dashboard was designed **strictly based on the SQL business questions**, ensuring consistency between backend analysis and frontend visualization.

📄 Page 1: Churn Overview

* Total Users
* Churned Users
* Overall Churn Rate

📄 Page 2: Demographic Analysis

* Age-wise churn rate
* Region-wise churn rate

📄 Page 3: Subscription & Device Analysis

* Subscription type wise churn
* Device wise churn

📄 Page 4: Behavioral Analysis

* User activity (watch time) vs churn
* Last login / inactivity impact on churn

📄 Page 5: Risk Segmentation

* Low-engagement users vs overall population
* High churn risk customers table

🎛 Global Filters

* Region
* Subscription Type
* Age Group
* Device Type

---

📈 Key Insights & Business Decisions

1️⃣ Overall Churn is Significant

* A noticeable percentage of users are churning, indicating a need for **retention-focused strategies**.

**Business Decision:**

* Introduce proactive retention campaigns before subscription renewal.

---

2️⃣ Certain Subscription Plans Have Higher Churn

* Entry-level or basic plans show **higher churn** compared to premium plans.

**Business Decision:**

* Improve value proposition for basic plans (exclusive content, limited offers).

---

3️⃣ Younger Age Groups Show Higher Churn

* Users in lower age brackets churn more frequently.

**Business Decision:**

* Personalize content and recommendations for younger users.

---

4️⃣ Low User Activity Strongly Correlates with Churn

* Users with **low average watch time** have significantly higher churn rates.

**Business Decision:**

* Trigger engagement emails, recommendations, and push notifications for low-activity users.

---

5️⃣ Inactivity (Last Login) Is a Major Churn Driver

* Users inactive for longer periods are far more likely to churn.

**Business Decision:**

* Implement reactivation campaigns after 7–30 days of inactivity.

---

6️⃣ Device Usage Impacts Churn

* Certain devices show higher churn, possibly due to poor user experience.

**Business Decision:**

* Investigate UX/performance issues on high-churn devices.

---

7️⃣ High-Risk Customers Can Be Identified Early

* Combining low activity, long inactivity, and churn history helps flag **high-risk users**.

**Business Decision:**

* Create a churn risk score and prioritize retention offers for high-risk customers.

---

🧠 Key Learnings

* SQL is essential for **accurate business logic and validation**
* Power BI transforms analysis into **decision-ready insights**
* A good dashboard answers **business questions, not just shows charts**
* Churn analysis is a mix of **demographics + behavior + engagement**

---

👤 Author- Shubham Pathak

Aspiring Data Analyst | SQL | Power BI | Excel

---

⭐ If you found this project helpful, feel free to star the repository!
