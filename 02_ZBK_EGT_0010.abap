*&---------------------------------------------------------------------*
*& Report ZBK_EGT_0010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBK_EGT_0010.

*DATA gv_desg1 TYPE i.
*DATA gv_desg2 TYPE n LENGTH 10.

*Bu bir yorum satırıdır.
*Program akışına müdehale etmez.
DATA: gv_desg1 TYPE i,
      gv_desg2 TYPE n LENGTH 10,
      gv_sonuc TYPE i,
      gv_metın TYPE string.

gv_desg1 = 90.
gv_desg2 = 150.

WRITE gv_desg1.
WRITE / gv_desg2.

gv_metın = 'Toplam = '.
gv_sonuc = gv_desg1 + gv_desg2.
WRITE: gv_metın, gv_sonuc.


gv_metın = 'Fark = '.
gv_sonuc = gv_desg1 - gv_desg2.
WRITE: gv_metın, gv_sonuc.

gv_metın = 'Çarpımı = '.
gv_sonuc = gv_desg1 * gv_desg2.
WRITE: gv_metın, gv_sonuc.

gv_metın = 'Bölüm = '.
gv_sonuc = gv_desg1 / gv_desg2.
WRITE: gv_metın, gv_sonuc.
