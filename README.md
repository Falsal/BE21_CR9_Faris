# BE21_CR9_Faris
DataBase design 

The normalization process:
I began by translating the UML design into tables, now when i started putting attributes and while i began to use querries, i got a few errors 
that directed me to improve the design like moving some fields into other tables and deleting other fields that were redundant because the information was already
available in other tables.

Currently tables are normalized because :

1-Each column contains a single attribute and not a set of values
2-values stored are of the same type
3-every column name is unique.

They are in the 2nd Normal Form, because:
1-they are in first normal form
2-there is no partial dependencies

They are in the 3rd Normal form because:
1-they are in 2nd Normal form
2- there are no attributes in tables depending on non-primary attributes
