SELECT NOW(); #SysTime -> 2023-04-04 22:57:11

#formating as per need
SELECT DATE_FORMAT( NOW(), '%Y');  #2023
SELECT DATE_FORMAT( NOW(), '%y')	; #23

SELECT DATE_FORMAT( NOW(), '%M %Y'); #April 2023
SELECT DATE_FORMAT( NOW(), '%h:%i %p') ;#10:55 PM

