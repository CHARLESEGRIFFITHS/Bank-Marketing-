# Bank Marketing — SQL Analysis

A SQL analysis of the UCI Bank Marketing data: who did a Portuguese bank call, and who said yes to a term deposit?

## The data

UCI Machine Learning Repository — Bank Marketing (bank-additional-full). One row per client contacted by the bank's direct marketing campaign (phone calls).

- **41,188 clients**
- Columns include age, job, marital status, education, default, housing loan, personal loan, contact type, month, day of week, call duration, and the outcome: whether the client subscribed to a term deposit (`y` = yes/no)
- **4,640 clients said yes (11.3%)**; 36,548 said no

## Questions and findings

**Which job types were called most?**
admin. led with 10,422 clients, followed by blue-collar (9,254) and technician (6,743).

**Which job and marital status combinations were most common?**
Married blue-collar clients were the largest group (6,687), then married admin. (5,253) and single admin. (3,875).

**How many clients had loans?**
6,248 clients had a personal loan and 21,576 had a housing loan. The largest loan group was married blue-collar clients: 1,008 with a personal loan and 3,405 with a housing loan. (990 records have "unknown" for the loan fields.)

**Which job and education combinations were most common?**
Admin. with a university degree (5,753), then blue-collar with basic 9 years of schooling (3,623) and admin. with a high school education (3,329). A university degree was the most common education level overall (12,168 clients).

**Did age matter for saying yes?**
Barely. Clients who said yes averaged 40.9 years old, compared with 39.9 for those who said no.

## How to run it

Load the CSV into SQLite, then run the queries in `analysis.sql`. Note the CSV uses semicolons (`;`) between values, not commas — set the separator when you import it.

In DB Browser for SQLite: File → Import → Table from CSV, choose `data/bank-additional-full.csv`, set the field separator to `;`, name the table `clients`, then open the Execute SQL tab and run `analysis.sql`.

From the command line:

```bash
sqlite3 bank-marketing.db
sqlite> .mode csv
sqlite> .separator ;
sqlite> .import data/bank-additional-full.csv clients
sqlite> .read analysis.sql
```

## About this project

A beginner SQL practice project. The queries started as practice drafts and were cleaned up as part of learning — the main fixes were putting every column in SELECT into GROUP BY, and moving filters on plain columns from HAVING to WHERE.

## Files

- `analysis.sql` — the queries, each written under the question it answers
- `data/bank-additional-full.csv` — the full dataset (41,188 rows)

## Skills

SQL (SQLite) · `SELECT` · `WHERE` · `GROUP BY` · `HAVING` · `ORDER BY` · `COUNT` · `AVG`
