*&---------------------------------------------------------------------*
*& Report Z_EGT_0030
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT Z_EGT_0030.

DATA gv_sayi TYPE i.

gv_sayi = 3.

IF gv_sayi = 1.
  WRITE: 'Girilen sayi 1 '.
ELSEIF gv_sayi = 2.
  WRITE: 'Girilen sayi 2'.
ELSEIF gv_sayi = 3.
  WRITE: 'Girilen sayi 3 '.
ELSEIF gv_sayi = 4 .
  WRITE: 'Girilen sayi 4 '.
ELSE.
  WRITE: 'Girilen sayi 1 ile 4 arasinda degil'.
ENDIF.