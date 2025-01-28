# SQL Queries Documentation

This README file provides an explanation of the SQL queries and their purposes. Each query performs specific analyses on the given database tables.

---

## 1. Films Longer Than the Average Length

```sql
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE length > (SELECT AVG(length) FROM film);
```

**Description:** This query counts the number of films in the `film` table that have a length greater than the average film length.

- **Subquery:** `(SELECT AVG(length) FROM film)` calculates the average length of all films.
- **WHERE clause:** Filters films with a length greater than the calculated average.

**Output:** The result is a single number (`film_sayisi`) representing the count of films longer than the average length.

---

## 2. Films with the Highest Rental Rate

```sql
SELECT COUNT(*) AS film_sayisi
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);
```

**Description:** This query counts how many films have the highest rental rate in the `film` table.

- **Subquery:** `(SELECT MAX(rental_rate) FROM film)` determines the maximum rental rate value.
- **WHERE clause:** Filters films with the rental rate equal to the maximum value.

**Output:** The result is a single number (`film_sayisi`) representing the count of films with the highest rental rate.

---

## 3. Films with the Lowest Rental Rate and Replacement Cost

```sql
SELECT *
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
  AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);
```

**Description:** This query retrieves all films with the lowest rental rate and the lowest replacement cost from the `film` table.

- **Subqueries:**
  - `(SELECT MIN(rental_rate) FROM film)` finds the minimum rental rate.
  - `(SELECT MIN(replacement_cost) FROM film)` finds the minimum replacement cost.
- **WHERE clause:** Filters films where both conditions are met.

**Output:** The result is a list of films with the lowest rental rate and replacement cost, including all their details.

---

## 4. Customers with the Highest Number of Payments

```sql
SELECT customer_id, COUNT(*) AS toplam_odeme
FROM payment
GROUP BY customer_id
ORDER BY toplam_odeme DESC;
```

**Description:** This query identifies customers who made the highest number of payments in the `payment` table.

- **GROUP BY:** Groups the payments by `customer_id`.
- **COUNT(\*):** Counts the number of payments for each customer.
- **ORDER BY:** Sorts the results in descending order of the payment count (`toplam_odeme`).

**Output:** The result is a list of customers sorted by the number of payments they made, with the highest paying customers at the top.

---

### Notes:

- These queries assume the presence of properly structured `film` and `payment` tables in the database.
- Adjust table or column names if your database schema uses different naming conventions.


