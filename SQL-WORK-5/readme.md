# SQL Queries - Patika SQL Work 5

Bu repoda, SQL sorguları ile ilgili çalışmalara yer verilmektedir. Aşağıda sorular ve ilgili SQL sorguları verilmiştir.

## Sorular ve Sorgular

### Soru 1
**Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.**

```sql
SELECT *
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
```
### Soru 2
**film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.**

```sql
SELECT title, length
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 6
LIMIT 5;
```
### Soru 3
**customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.**

```sql
SELECT * FROM customer 
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;
```
Teşekkürler.
