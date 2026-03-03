/*
The Chinook database contains details of an online music store.
Here are some example answers to the question
*/

-- List all customers
select 
* 
from 
Customer c 

-- List all customers. Show only the CustomerId, FirstName and LastName columns

select 
c.CustomerId
,c.FirstName
,c.LastName

from 
 customer c


-- List customers in the United Kingdom  

select 
c.CustomerId
,c.FirstName
,c.LastName

from 
 customer c

 where c.Country = 'United Kingdom'


-- List customers whose first names begins with an A.

select 
c.CustomerId
,c.FirstName
,c.LastName

from 
 customer c

 where c.firstname like 'A%'


-- Hint: use LIKE and the % wildcard

-- List Customers with an apple email address

select 
c.CustomerId
,c.FirstName
,c.LastName
,c.Email

from 
 customer c

 where Email like '%@apple.com'



-- Which customers have the initials LK?

select 
c.CustomerId
,c.FirstName
,c.LastName
,c.Email

from 
 customer c

 where c.FirstName like 'L%' and c.LastName like 'K%'


-- Which are the corporate customers i.e. those with a value, not NULL, in the Company column?

select 
c.CustomerId
,c.FirstName
,c.LastName
,c.Email
,c.Company

from 
 customer c

 where c.Company is not null



-- How many customers are in each country.  Order by the most popular country first.

select 
,c.Country,
count (*) as Numberofcustomers
from customer c
group by c.country
order by Numberofcustomers desc


-- When was the oldest employee born?  Who is that?

select top 1 
e.birthdate from employee e
order by e.BirthDate asc

select min (e.birthdate) from employee e

-- List the 10 latest invoices. Include the InvoiceId, InvoiceDate and Total

select top 10
i.InvoiceId
,i.InvoiceDate
,i.Total    
from invoice i
order by i.InvoiceDate desc


-- Then  also include the customer full name (first and last name together)

select top 10
i.InvoiceId
,i.InvoiceDate
,i.Total    
,c.FirstName
,c.LastName
,c.FirstName + ' ' + c.LastName as FullName
from invoice i
left join customer c on i.CustomerId = c.CustomerId
order by i.InvoiceDate desc


-- List the customers who have spent more than £45



-- List the City, CustomerId and LastName of all customers in Paris and London, 
-- and the Total of their invoices
	
-- Show all details about customer Michelle Brooks.  List salient details of her invoices.

/*
Which employees were born in the 1960s?  Show only the EmployeeId, FirstName, LastName and BirthDate columns
Note: Define a date value as with the region independent format 'yyyy-mm-dd' e.g. '1969-12-31'
*/


-- List countries, and the number of customers and the total invoiced amount
-- Order  high to low in terms of the number of customers

-- What are the top 10 most popular artists in terms of number of tracks bought by customers?

-- List the albums in alphabetical order of Title

-- List 10 albums and their artist.  Order by album title.

