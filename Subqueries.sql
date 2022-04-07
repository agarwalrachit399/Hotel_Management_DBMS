-- How many distinct guest have made bookings for a particular month?
SELECT guest_first_name, guest_last_name,guest_contact_number
	FROM guests
	WHERE guest_id IN 
		( SELECT distinct guests_guest_id 	
		  FROM bookings
		  WHERE MONTH(check_in_date) = 8);	
          
          
          
-- List all the unique countries hotels are located in.
	SELECT DISTINCT country					
	FROM addresses
	WHERE address_id IN 					
		( SELECT  addresses_address_id		
		  FROM hotel);