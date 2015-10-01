--When using this copy statement:
--Your cvs file should have column headers.
--Only have the columns being imported in the cvs file.
--Columns need to be in the same order as column names in the COPY statement.
--The data must be clean (format that is valid for columns in the table.)
--You have to change the path/file_name.cvs in the statement below.

COPY 	product 
(	description, 
	itemlookupcode,
	price,
	itemtype, 
	cost,
	quantity,
	reorderpoint,
	restocklevel,
	parentitem,
	extendeddescription,
	inactive,
	msrp,
	datecreated
)	FROM '/path/to/your/cvs/file/file_name.csv' DELIMITER ',' CSV HEADER;
