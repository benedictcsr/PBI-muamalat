SELECT
	o."Date" AS order_date,
	pc."CategoryName" AS category_name,
	prod."ProdName" AS product_name,
	prod."Price" AS product_price,
	o."Quantity" AS order_qty,
	(prod."Price" * o."Quantity") AS total_sales,
	cus."CustomerEmail" AS cust_email,
	cus."CustomerCity" AS cust_city
FROM "Customers" AS cus
JOIN "Orders" AS o 
	ON cus."CustomerID" = o."CustomerID"
JOIN "Products" AS prod
	ON o."ProdNumber" = prod."ProdNumber"
JOIN "ProductCategory" AS pc
	ON prod."Category" = pc."CategoryID"
ORDER BY 
	order_date, 
	order_qty