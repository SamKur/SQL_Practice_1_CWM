SELECT DATE_ADD( NOW(),INTERVAL 1 YEAR ); #YEAR+1

SELECT DATE_ADD( NOW(),INTERVAL -1 MONTH );
#or below
SELECT DATE_SUB( NOW(),INTERVAL 1 MONTH );

SELECT DATEDIFF(NOW(), '2020-04-20' ) ; #day diffr
#note above time is neglected totally

SELECT TIME_TO_SEC('09:45');

#below NOW() is Unix Epoch Time i.e  January 1, 1970
SELECT ( NOW() - TIME_TO_SEC('00:02') );

#
SELECT TIME_TO_SEC(TIMEDIFF(NOW(), '09:45:00'));