-- 1. soru
-- Tüm sütunları null olan bir veri yoktur. 0 tane satır döner
SELECT COUNT(*) FROM invoice 
where invoice_id is null and customer_id is null and invoice_date is null and billing_address is null
and billing_city is null and billing_state is null and billing_country is null and billingpostal_code is null and total is null;

-- 2.soru
SELECT 
	invoice_id, 
	customer_id, 
	invoice_date,
	billing_address,
	billing_city,
	billing_state,
	billing_country,
	billingpostal_code,
	total,
	total * 2 as twice_of_total
FROM invoice
ORDER BY twice_of_total;

-- 3.soru
SELECT
	invoice_id, 
	customer_id, 
	invoice_date,
	LEFT(billing_address, 3) || RIGHT(billing_address, 4) AS açık_adres,
	billing_city,
	billing_state,
	billing_country,
	billingpostal_code,
	total
FROM invoice
WHERE DATE_PART('month', invoice_date) = 10 AND DATE_PART('year', invoice_date) = 2010;