*&---------------------------------------------------------------------*
*& Report ztest_mara_display
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_mara_display.

SELECT * FROM mara INTO TABLE @DATA(lt_mara).
*User 2 changes
*User 1 Changes New1

cl_salv_table=>factory(
     IMPORTING
    r_salv_table   =   data(lr_table)
  CHANGING
    t_table        = lt_mara
).
lr_table->display( ).
