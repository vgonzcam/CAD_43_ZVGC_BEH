CLASS zcl_generate_table_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_generate_table_data IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.
    DATA:itab TYPE TABLE OF ZVG_TABLE.

*   read current timestamp
    GET TIME STAMP FIELD DATA(zv_tsl).

*   fill internal travel table (itab)
    itab = VALUE #(
  ( mykey = '02D5290E594C1EDA93815057FD946624' descr = '1' )
  ( mykey = '02D5290E594C1EDA93815C50CD7AE62A' descr = '2' )
  ( mykey = '02D5290E594C1EDA93858EED2DA2EB0B' descr = '3' ) ).

*   delete existing entries in the database table
    DELETE FROM ZVG_TABLE.

*   insert the new table entries
    INSERT ZVG_TABLE FROM TABLE @itab.

*   check the result
    SELECT * FROM ZVG_TABLE INTO TABLE @itab.
    out->write( sy-dbcnt ).
    out->write( 'Travel data inserted successfully!').

  ENDMETHOD.

ENDCLASS.
