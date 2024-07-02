#numeric funct

SELECT 5.79;
SELECT ROUND(5.79);
SELECT ROUND(5.79, 1); #1digit after point
SELECT TRUNCATE(5.79, 1); #5.7 , discarded rest
SELECT CEIL(5.79); #6, ceil int value #or, CEILING
SELECT FLOOR(5.79); #5
SELECT ABS(-5.79); #5.79, positive value
SELECT RAND(); #random value 0~1

#asin , sin, conv, div,exp,log2,pi,pow

#string funct

SELECT LENGTH('  yh	s k '); #'..' or ".."
SELECT LOWER('sky') ;
SELECT TRIM('   sky   ') ; #rtrim for right whitespace trimmer
SELECT LEFT('sky',1); #from left print  char
SELECT SUBSTR('skyscrapper',4,2); #sc, 2char taken (optional, till end)
SELECT upper(SUBSTR('skyscrapper',4));
SELECT LOCATE('GarTEn', 'kindergarten'); #7 as its 1st occurance
#N.B: for other programming lang it's -1
SELECT LOCATE('X', 'kindergarten'); #0 means doesnt exist
SELECT REPLACE('Kindergarten', 'garten', 'garDen');
SELECT CONCAT('Kind','ergar','ten'); #join strings

#using in df
SELECT CONCAT(first_name, ' ', last_name)
FROM sql_store.customers;


#date func ( '2019-03-13' )

SELECT NOW(), CURDATE(), CURTIME();
SELECT DATE( NOW() );
SELECT YEAR( NOW() ); #2023
SELECT HOUR( NOW() );
SELECT DAY( NOW() );
SELECT MONTHNAME( NOW() );  #April
SELECT EXTRACT( MINUTE from NOW() ); #STANDARD sql kwd
