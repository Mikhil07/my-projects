create database music;
use music;


drop table artist;

select * from artist;

select * from invoice;

drop table invoice;

CREATE TABLE Invoice (
    InvoiceId INT PRIMARY KEY,
    CustomerId INT,
    InvoiceDate DATE,
    BillingAddress VARCHAR(100),
    BillingCity VARCHAR(50),
    BillingState VARCHAR(50),
    BillingCountry VARCHAR(50),
    BillingPostalCode VARCHAR(10),
    Total float
);

drop table employee;





select * from employee;


INSERT INTO Invoice (InvoiceId, CustomerId, InvoiceDate, BillingAddress, BillingCity, BillingState, BillingCountry, BillingPostalCode, Total) VALUES
(1, 3, '2023-07-11', '2924 Medina Locks Apt. 535', 'West Lindsay', 'North Carolina', 'Afghanistan', '23548', 73.15),
(2, 5, '2023-07-24', '807 Stone Lane', 'Port Tanya', 'Washington', 'Mali', '16614', 11.05),
(3, 6, '2025-02-07', '19247 Sara Ridges Apt. 175', 'Jessicamouth', 'Iowa', 'Indonesia', '20964', 67.08),
(4, 2, '2024-09-11', '62621 Robert Prairie', 'Shieldsberg', 'Rhode Island', 'Maldives', '87825', 8.39),
(5, 1, '2024-02-28', '00134 Chambers Light', 'Port Timothyton', 'Kentucky', 'Mayotte', '72546', 30.31),
(6, 7, '2023-11-28', '83241 Timothy Harbor', 'Lake Carl', 'West Virginia', 'Montenegro', '09884', 72.10),
(7, 5, '2023-12-09', '81736 Kristopher Drive Suite 327', 'Lake Brittanyfort', 'Virginia', 'Dominica', '44613', 96.82),
(8, 7, '2023-10-21', '034 Ortiz Green Suite 454', 'Lopezberg', 'North Dakota', 'Paraguay', '78374', 92.30),
(9, 6, '2023-10-23', '3964 Goodwin Greens', 'West Jason', 'Illinois', 'France', '61436', 53.63),
(10, 4, '2024-07-16', '03500 Ashley Hills Suite 543', 'Jenkinsfort', 'Tennessee', 'Suriname', '22313', 85.75),
(11, 11, '2023-09-19', '331 Edgar Underpass', 'North Tristan', 'Tennessee', 'Barbados', '87623', 66.30),
(12, 11, '2023-08-23', '434 Joseph Spring', 'New Ashleyborough', 'Florida', 'Namibia', '20989', 61.75),
(13, 8, '2024-07-23', '90142 Hebert Summit', 'Smithbury', 'California', 'Cocos (Keeling) Islands', '31570', 13.55),
(14, 3, '2024-04-25', '6801 Anthony Loop', 'New Nicholasfurt', 'Louisiana', 'Latvia', '22822', 26.11),
(15, 1, '2024-09-04', '16568 Johnson Locks Suite 336', 'Nguyenstad', 'Delaware', 'Iran', '35388', 17.34),
(16, 1, '2023-08-09', '50473 Stephanie Land Apt. 229', 'Carrburgh', 'South Carolina', 'Tuvalu', '44122', 51.81),
(17, 10, '2024-10-23', '18399 Christina Cliff', 'Matthewview', 'Kansas', 'Cote d''Ivoire', '16819', 51.20),
(18, 5, '2023-07-18', '31414 Cruz Ridges Suite 634', 'Kathrynborough', 'Tennessee', 'South Georgia and the South Sandwich Islands', '31355', 44.09),
(19, 4, '2023-06-17', '25914 Lee Overpass Suite 493', 'Hayestown', 'Wisconsin', 'Antigua and Barbuda', '20864', 29.46),
(20, 3, '2023-09-10', '845 Robert Shoals', 'South Jamie', 'North Carolina', 'Anguilla', '91918', 59.23);


CREATE TABLE InvoiceLine (
    InvoiceId INT,
    TrackId INT,
    UnitPrice float,
    Quantity INT,
    PRIMARY KEY (InvoiceId, TrackId)
);

INSERT INTO InvoiceLine (InvoiceId, TrackId, UnitPrice, Quantity) VALUES
(8, 11, 3.17, 5),
(16, 2, 2.45, 2),
(20, 17, 2.77, 4),
(11, 23, 3.40, 1),
(1, 24, 3.22, 2),
(12, 30, 1.57, 3),
(9, 7, 2.05, 3),
(6, 6, 3.15, 4),
(19, 3, 2.74, 4),
(10, 9, 3.01, 1),
(19, 8, 1.36, 4),
(4, 30, 2.70, 2),
(1, 10, 1.96, 5),
(2, 5, 1.79, 4),
(10, 20, 1.47, 4),
(16, 23, 3.21, 2),
(16, 28, 3.51, 1),
(12, 14, 3.61, 2),
(11, 2, 1.00, 5),
(20, 16, 1.51, 4),
(2, 8, 3.33, 5),
(5, 7, 2.74, 5),
(3, 24, 1.42, 4),
(15, 4, 2.84, 3),
(20, 10, 3.71, 5),
(18, 4, 3.18, 5),
(8, 7, 3.62, 2),
(15, 1, 2.98, 5),
(18, 17, 1.78, 3),
(16, 13, 1.53, 1),
(16, 6, 2.63, 4),
(11, 5, 2.31, 3),
(19, 29, 2.93, 2),
(1, 6, 2.25, 5),
(17, 10, 1.87, 4),
(11, 10, 3.59, 3),
(4, 20, 3.37, 3),
(20, 2, 1.85, 5),
(17, 2, 1.95, 1),
(20, 13, 1.06, 2);

alter table customer add total float;
update customer set total = 100.52 where customerid = 1;

SET SQL_SAFE_UPDATES = 0;

UPDATE Customer SET Total = 70.01 WHERE CustomerId = 12;



select * from customer;

CREATE TABLE Employee (
    EmployeeId INT PRIMARY KEY,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    Title VARCHAR(100),
    ReportsTo INT,
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    PostalCode VARCHAR(20),
    Phone VARCHAR(30),
    Fax VARCHAR(30),
    Email VARCHAR(100)
);

INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES
(1, 'Houston', 'Katelyn', 'Surveyor, quantity', 4, '1984-07-28', '2024-05-26', '37650 Anna Cliffs', 'Annmouth', 'Oklahoma', 'China', '65856', '001-240-541-2815', '(537)337-0185x525', 'ewest@smith.com'),
(2, 'Henry', 'Chad', 'Retail banker', 1, '1978-12-18', '2023-07-24', '139 Gray Gateway Suite 975', 'East Meagantown', 'Kentucky', 'Saint Kitts and Nevis', '61132', '945.613.8054x600', '(600)584-5027x5416', 'grantnicole@yahoo.com'),
(3, 'Jones', 'Nicole', 'Designer, ceramics/pottery', 1, '1964-10-28', '2022-11-13', '7440 Vincent Forge', 'Lake Josephmouth', 'Vermont', 'Estonia', '24960', '+1-977-400-2986x54355', '539.527.7798x462', 'jamesmartin@hotmail.com'),
(4, 'Young', 'Daniel', 'Magazine features editor', 4, '1974-10-17', '2022-05-12', '6159 Norman Mount', 'Cuevasberg', 'Louisiana', 'Bangladesh', '18348', '001-360-355-1183x91352', '639.620.0652', 'jennifer70@yahoo.com'),
(5, 'Clark', 'Christina', 'Secondary school teacher', 2, '1975-02-09', '2018-08-21', '36327 Beth Extensions Apt. 904', 'Coxborough', 'Arizona', 'Azerbaijan', '00965', '001-474-440-9081x7010', '086.844.4074x36964', 'jonesdonna@yahoo.com'),
(6, 'Lopez', 'Caroline', 'Insurance claims handler', 2, '1987-01-17', '2023-07-24', '8573 Black Courts Suite 683', 'Jakefort', 'Idaho', 'Ghana', '38163', '161-131-6161x1366', '001-375-108-3143', 'vle@bailey-richardson.net');

alter table employee add level varchar(10);
update employee
set level = 'L6' where employeeid = 5;

#who is the senior most employee based on job title?

select * from employee
order by level desc limit 1;

#which countries have the most invoices?

select count(*), billingcountry from invoice
group by billingcountry;

#what are the top 3 values of total invoice?
select * from invoice;

select invoiceid, billingaddress, billingcountry,total from invoice
order by total desc limit 3;

select * from customer;


#which city has best customers? write a query that returns one city that has the highest sum of invoices total.
#return both the city name and sum of all invoices total.

select * from invoice;

select sum(total) as total_invoice, billingcity from invoice
group by billingcity
order by sum(total) desc;

select * from customer;
select * from invoice;
#who is the best customer? who has spent the most money will be declared the best customer?
SELECT 
  customer.customerId, 
  customer.firstname, 
  customer.lastname, 
  SUM(invoice.total) AS total
FROM customer
JOIN invoice ON customer.customerId = invoice.customerId
GROUP BY 
  customer.customerId, 
  customer.firstname, 
  customer.lastname
ORDER BY total DESC
LIMIT 1;

#moderate questions.  write query to return the email, firstname, lastname and genre of all skill music listeners
#return your list ordered alphabetically byemail starting with A.

select * from genre;

select distinct email, firstname, lastname from customer
join invoice on customer.customerId = invoice.customerid
join invoiceline on invoice.invoiceid= invoiceline.invoiceid
where trackid in (select trackid from track join genre on track.genreid= genre.genreid
where genre.name like 'skill')
order by email;

#lets invite the artist who have written the most skill music. write a query thst returns the artist name andthe total track count of top 10 skill bands.

select * from artist; 

select artist.artistid, artist.name, count(artist.artistid) as number_of_songs
from track join album on album.albumid = track.albumid
join artist on artist.artistid = album.artistid
join genre on genre.genreid = track.genreid
where genre.name like 'skill'
group by artist.artistid, artist.name
order by number_of_songs desc limit 10; 


#return all the track names that have a song length longer than the avg song length. return the name and milliseconds for each track, order
#by songs that have the longest song listed first.

select name, milliseconds from track 
where milliseconds > (select avg(milliseconds) as avg_track_length from track)
order by milliseconds desc;

#advanced question
#find how much amount spent by each customer on artist. write a query to return customer name, artist name and total spent.?

SELECT 
  c.FirstName, c.LastName,
  ar.Name AS artist_name,
  SUM(il.UnitPrice * il.Quantity) AS total_spent
FROM customer as c
JOIN invoice as i ON c.CustomerId = i.CustomerId
JOIN invoiceline il ON i.InvoiceId = il.InvoiceId
JOIN track as t ON il.TrackId = t.TrackId
JOIN album as al ON t.AlbumId = al.AlbumId
JOIN artist as ar ON al.ArtistId = ar.ArtistId
GROUP BY c.CustomerId, ar.ArtistId, c.firstname, c.lastname, artist_name
ORDER BY total_spent DESC;

#find out the most popular music genre for each country. determine the most popular genre as the genre with the highest
#amount of purchase . write a query that return each country along with the top genre for countries where the maximum no: of purchase.
WITH popular_genre AS (
  SELECT 
    customer.Country,
    genre.Name AS Genre,
    genre.GenreId,
    COUNT(invoiceline.Quantity) AS purchases,
    ROW_NUMBER() OVER (
      PARTITION BY customer.Country 
      ORDER BY COUNT(invoiceline.Quantity) DESC
    ) AS rowno
  FROM invoiceline
  JOIN invoice ON invoice.InvoiceId = invoiceline.InvoiceId
  JOIN customer ON customer.CustomerId = invoice.CustomerId
  JOIN track ON track.TrackId = invoiceline.TrackId
  JOIN genre ON genre.GenreId = track.GenreId
  GROUP BY customer.Country, genre.Name, genre.GenreId
)
SELECT *
FROM popular_genre
WHERE rowno = 1
ORDER BY Country;


#write a query that determines the customer that has spent  the most on music for each country. write a query that returns the country along with
#the top customer and how much they spent. for countries where the top amount spent is shared, provide all customers who spent this amount.

WITH customer_spending AS (
  SELECT 
    customer.CustomerId,
    customer.FirstName,
    customer.LastName,
    customer.Country,
    SUM(invoiceline.UnitPrice * invoiceline.Quantity) AS total_spent
  FROM customer
  JOIN invoice ON customer.CustomerId = invoice.CustomerId
  JOIN invoiceline ON invoice.InvoiceId = invoiceline.InvoiceId
  GROUP BY customer.CustomerId, customer.FirstName, customer.LastName, customer.Country
),
ranked_spending AS (
  SELECT *,
         RANK() OVER (PARTITION BY Country ORDER BY total_spent DESC) AS rank_in_country
  FROM customer_spending
)
SELECT 
  Country,
  FirstName,
  LastName,
  total_spent
FROM ranked_spending
WHERE rank_in_country = 1
ORDER BY Country;