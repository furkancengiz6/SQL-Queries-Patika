--1.city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini
--birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT city,country  FROM country 
INNER JOIN city ON country.country_id = city.country_id;

--2.customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve 
--last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT first_name,last_name FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id;

--3.customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
--isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT first_name , last_name FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id
