CREATE PROCEDURE weekly_check (
in_isbn VARCHAR(20),
in_author VARCHAR(60)
)
BEGIN
DECLARE v_count INT;
DECLARE v_counter INT;
DECLARE v_available INT;
DECLARE v_new_location INT DEFAULT 1056;
DECLARE v_published_date DATE DEFAULT NOW( );
SET v_published_date=book_published_date(in_isbn);

IF DATE_SUB(NOW( ), INTERVAL 60 DAY) > v_published_date THEN

CALL review_usage( );
ELSEIF DATE_SUB(NOW( ), INTERVAL 24 DAY) > v_published_date

THEN
CALL check_availability (in_isbn, v_available, v_count);
IF v_available
AND /* Turn off due to Req A12.6 */ FALSE
THEN
CALL transfer_book (in_isbn, v_count - 1, v_new_location);
END IF;
-- Check for reserves
-- CALL analyze_requests (isbn_in);
END IF;




CREATE PROCEDURE display_book_usage( )
READS SQL DATA
BEGIN
DECLARE v_month INT;
DECLARE v_x INT;
DECLARE yearly_analysis_csr CURSOR FOR SELECT ...;
DECLARE monthly_analysis_csr CURSOR FOR SELECT ...;
OPEN yearly_analysis_csr;
yearly_analysis:
LOOP
FETCH yearly_analysis_csr INTO v_month;
OPEN monthly_analysis_csr;
monthly_analysis:
LOOP
FETCH monthly_analysis_csr INTO v_x;
... Lots of monthly analysis code ...
END LOOP monthly_analysis;
...Lots of yearly analysis code
END LOOP yearly_analysis;
