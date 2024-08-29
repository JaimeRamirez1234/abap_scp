CLASS zcl_delete_table_a223 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_a223 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DELETE from zrent_brands_a22.

    IF sy-subrc eq 0.
        out->write( 'All data deleted' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
